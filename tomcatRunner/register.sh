docker run --rm -t -i -v $(pwd)/config:/etc/gitlab-runner --name gitlab-runner gitlab/gitlab-runner-register register
