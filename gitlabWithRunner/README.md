# gitlab-runner
* gitlab-runner 之前是需要自己建立的，但是在後面的機制補滿之後，已經不需要自行建立了。可以動態的透過`image`標籤，直接選用想要使用的image，另外再buffer dir的部分也可以直接指定repo。這樣就不需要每次執行的時候針對repository的同步去花時間去執行。最終的執行時間只需要build的時間即可。透過專案build的buffer機制可以縮短到秒級的程度。

# shell
* `rerun_`: 重新啟動shell
* `show_`: trace_log
* `restart_container`: 強制啟動container 

# `.gitlab-ci.yml`
* 這個檔案就是gitlab ci/cd的啟動檔，在新版的標籤建立後就可以直接使用到上述的功能
## image
```
image: maven:3.6.3-openjdk-8
```
## cache
```
cache:
  paths:
    - .m2/repository
    - tmp/
    - /var/lib/docker
```
## stage
```
stages:
  - deploy
  - start
  - test
  - run
```

## script
```
before_script:
  - echo $CI_PIPELINE_ID
  - echo $CI_PIPELINE_IID
  - echo $CI_JOB_ID
  - echo $CI_JOB_STAGE
  - echo $CI_JOB_NAME
  - echo $CI_COMMIT_SHORT_SHA
  - echo $CI_BUILD_ID
  - echo $GITLAB_USER_LOGIN
  - echo $CI_PROJECT_DIR
  - echo $(pwd)
  - mkdir -p ~/.ssh
  - echo $PRIVATE_KEY | base64 -di > ~/.ssh/id_rsa
  - chmod 700 ~/.ssh/id_rsa
  - echo $SSH_CONFIG > ~/.ssh/config
  - chmod 700 ~/.ssh/config
  - find . -type f -name "*.java" -print0 | xargs -0 sed -i 's/@ActiveProfiles/\/\/@ActiveProfiles/g'
  - find . -type f -name "*.java" -print0 | xargs -0 sed -i 's/\/\/\/\/@ActiveProfiles/\/\/@ActiveProfiles/g'
```