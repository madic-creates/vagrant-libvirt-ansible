# vagrant-libvirt-ansible

This container is based upon [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt) container and adds ansible as configuration plugin.

It can be used as a drop-in replacement for the [official vagrant libvirt container](https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#docker--podman).

I prefer to use the vagrant-libvirt container because my desktop os of choice, arch linux, has newer versions of packages as vagrant libvirt requires and because of this makes it real hard to use.

But by default the container does not contain ansible and I need it to provision virtual machines, especially for the test environment of my [k3s-git-ops project](https://github.com/madic-creates/k3s-git-ops).

## Pull

```shell
docker pull ghcr.io/madic-creates/vagrant-libvirt-ansible:latest
```

## Build manually

```shell
docker build -f Containerfile .
```
