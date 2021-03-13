# gitlab-multi-runner

1. first to start gitlab-runner. [docker reference](https://docs.gitlab.com/runner/install/docker.html)

2. [prepare to register](https://docs.gitlab.com/runner/register/index.html) 

3. prepare a runner image for docker. 
  - Dockerfile
  - entrypoint.sh
  - docker-compose.yml

# Docker

## da
`my docker scripts`

* mysql: `damysql`
* mssql: `damssql`

# comment
* `docker system df -v`

* `wsl -l -v`
* `wsl -d <distro> -u <account>`
* `wsl -t <distro>`
* `wsl --export <distro> <filepath>`
* `wsl --import <distro> <imgfile> <filepath>`