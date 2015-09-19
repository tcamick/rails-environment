# Personal Website

```
A repository for the base configuration of my personal website. This is currently a work in progress
```

## Requirements
* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)
* [packer](https://www.packer.io/)

## Using packer
To create the vagrant box

    host $ cd packer-scripts
    host $ packer build -only=virtualbox-iso application-server.json

Once packer has done its thing then run

    host $ vagrant box add dev-rails ubuntu-14.04.3-server-amd64-appserver_virtualbox.box

## Virtual Machine Management

When done just log out with and suspend the virtual machine

    host $ vagrant suspend

then, resume to hack again

    host $ vagrant resume

Run

    host $ vagrant halt

to shutdown the virtual machine, and

    host $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    host $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://docs.vagrantup.com/v2/) for more information on Vagrant.
