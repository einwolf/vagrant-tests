#!/bin/bash

VAGRANT_LOG=info
VAGRANT_DEFAULT_PROVIDER=libvirt

# ovftool example
# ovftool vi://esxi4/NetBox2 NetBox2.ova

# vagrant plugin install vagrant-vmware-esxi
vagrant up --provider libvirt
