[github]: https://github.com/rayou/docker-ansible
[app-github]: https://github.com/ansible/ansible
[dockerstore]: https://hub.docker.com/r/rayou/ansible
[donation]: https://donorbox.org/rayou?amount=10

# docker-ansible
[![](https://img.shields.io/docker/image-size/rayou/ansible?sort=semver)][dockerstore] [![](https://img.shields.io/docker/v/rayou/ansible?sort=semver)][dockerstore] [![](https://img.shields.io/docker/stars/rayou/ansible.svg)][dockerstore] [![](https://img.shields.io/badge/Donate-Donorbox-green.svg)][donation]

Docker image of [ansible][app-github].

Repository name in Docker Hub: [rayou/ansible][dockerstore]

Repository name in Github: [rayou/docker-ansible][github]

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

# Contributing

PRs are welcome.

# Author

Ray Ou - yuhung.ou@live.com

# Donation

[![](https://d1iczxrky3cnb2.cloudfront.net/button-small-green.png)][donation]

# License

MIT.