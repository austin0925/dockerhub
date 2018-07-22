[dockerhub maven homepage](https://hub.docker.com/r/library/maven/)

# 感想：感覺還是透過gradle的設定來進行即可，另外.m2資料夾的內容也很容易複製。所以可以直接透過gradle的機制來處理。**但是有個重點，比較難更新.m2資料夾的內容**

# maven有提供幾種模式建立maven 主機
    - 直接透過maven環境把指定的路徑進行maven邏輯處理:
    `**類似免安裝**:`
    ```
    docker volume create --name maven-repo
    docker run -it -v maven-repo:/root/.m2 maven mvn archetype:generate # will download artifacts
    docker run -it -v maven-repo:/root/.m2 maven mvn archetype:generate # will reuse downloaded artifacts
    ```

    - 直接透過`mven clean package`來部署專案:
    `**類似免安裝，並且使用自己的專案路徑**`
    ```
    docker run -it --rm -v "$PWD":/usr/src/mymaven -v "$HOME/.m2":/root/.m2 -v "$PWD/target:/usr/src/mymaven/target" -w /usr/src/mymaven maven mvn clean package
    ```

    - Packaging a local repository with the image
    **這種方式使用範圍比較廣，但是需要自行製作image。**
    ```
    The $MAVEN_CONFIG dir (default to /root/.m2) could be configured as a volume so anything copied there in a Dockerfile at build time is lost. For that reason the dir /usr/share/maven/ref/ exists, and anything in that directory will be copied on container startup to $MAVEN_CONFIG.

    To create a pre-packaged repository, create a pom.xml with the dependencies you need and use this in your Dockerfile. /usr/share/maven/ref/settings-docker.xml is a settings file that changes the local repository to /usr/share/maven/ref/repository, but you can use your own settings file as long as it uses /usr/share/maven/ref/repository as local repo.

    COPY pom.xml /tmp/pom.xml
    RUN mvn -B -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
    To add your custom settings.xml file to the image use

    COPY settings.xml /usr/share/maven/ref/
    For an example, check the tests dir
    ```