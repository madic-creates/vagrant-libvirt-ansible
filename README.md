# vagrant-libvirt-ansible

This container is based upon [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt) container and adds ansible as configuration plugin.

It can be used as a drop-in replacement for the [official vagrant libvirt container](https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#docker--podman).

## Pull

```shell
docker pull ghcr.io/madic-/vagrant-libvirt-ansible:latest
```

## Build manually

```shell
docker build -f Containerfile .
```
