[app-github]: https://github.com/ansible/ansible
[microbadger]: https://microbadger.com/images/rayou/ansible
[dockerstore]: https://hub.docker.com/r/rayou/ansible

# docker-ansible
[![](https://images.microbadger.com/badges/image/rayou/ansible.svg)][microbadger] [![](https://images.microbadger.com/badges/version/rayou/ansible.svg)][microbadger] [![](https://img.shields.io/docker/stars/rayou/ansible.svg)][dockerstore]

Docker image of [ansible][app-github].

Repository name in Docker Hub: [rayou/ansible][dockerstore]

# Build
```bash
$ docker build --build-arg VERSION=$ANSIBLE_VERSION -t ansible .
# docker build --build-arg VERSION=2.7.6 -t ansible .
```

# Usage

### Run `ansible` directly
```bash
$ docker run --rm -it rayou/ansible:latest --help
```

### Run shell
```bash
$ docker run --rm -it --entrypoint=/bin/sh rayou/ansible:latest
```
