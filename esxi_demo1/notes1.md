# Vagrant vmware_esxi Provider

## Bad filesystem mount

```bash
RUBY_PLATFORM: x86_64-linux
==> box1: --- ESXi version    : VMware ESXi 7.0.3 build-19482537
==> box1: 
Bringing machine 'box1' up with 'vmware_esxi' provider...
==> box1: Virtual Machine will be built.
VMware ovftool 4.4.3 (build-18663434)
==> box1: --- Avail DS vols   : []
There was an error talking to ESXi.
  Unable to get list of Disk Stores:
```

ESXi has an inaccessable NFS file system.

```bash
# Check
esxcli storage filesystem list
df
esxcli storage filesystem rescan
```
