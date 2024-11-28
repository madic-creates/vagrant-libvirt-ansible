# vagrant-libvirt-ansible

This container builds upon the [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt) slim container by adding Ansible as provisioner.

You can use this as a direct replacement for the [official vagrant-libvirt container](https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#docker--podman).

I prefer to use the vagrant-libvirt container because my preferred desktop OS, Arch Linux, offers newer package versions, which are incompatible with the vagrant-libvirt requirements.

However, the default container does not include Ansible, which I need to provision virtual machines, particularly for testing my [k3s-git-ops project](https://github.com/madic-creates/k3s-git-ops).

## Pull the Container

```shell
docker pull ghcr.io/madic-creates/vagrant-libvirt-ansible:latest
```

## Create an Alias

To use the container as the standard `vagrant` command, add the following function to your bash/zsh configuration:

```shell
function vagrant() {
  docker run -it --rm \
    -e LIBVIRT_DEFAULT_URI \
    -v /var/run/libvirt/:/var/run/libvirt/ \
    -v ~/.vagrant.d:/.vagrant.d \
    -v $(realpath "${PWD}"):${PWD} \
    -w "${PWD}" \
    --network host \
    ghcr.io/madic-creates/vagrant-libvirt-ansible:latest \
      vagrant $@
}
```

## Build the Container Manually

```shell
docker build -f Containerfile .
```
