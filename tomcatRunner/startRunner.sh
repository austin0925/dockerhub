docker run --rm -t -i -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/config:/etc/gitlab-runner --name gitlab-runner gitlab/gitlab-runner
