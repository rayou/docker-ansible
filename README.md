[github]: https://github.com/rayou/docker-ansible
[app-github]: https://github.com/ansible/ansible
[dockerstore]: https://hub.docker.com/r/rayou/ansible
[donation]: https://www.buymeacoffee.com/rayou

# docker-ansible

![Docker Pulls](https://img.shields.io/docker/pulls/rayou/ansible) [![](https://img.shields.io/docker/image-size/rayou/ansible?sort=semver)][dockerstore] [![](https://img.shields.io/docker/v/rayou/ansible?sort=semver)][dockerstore] [![](https://img.shields.io/docker/stars/rayou/ansible.svg)][dockerstore] [![](https://img.shields.io/badge/☕️-Buy%20Me%20A%20Coffee-important.svg)][donation]

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
$ docker run --rm -it --entrypoint=/usr/local/bin/ansible rayou/ansible:latest --help
```

### Run `ansible-playbook` directly

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

# Support this project

<a href="https://www.buymeacoffee.com/rayou" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>

# License

MIT.
