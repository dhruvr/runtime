#!/bin/bash

qemu-system-x86_64                                          \
    -m 512                                                  \
    -smp 1                                                  \
    -s                                                      \
    -boot order=d                                           \
    -net nic,model=virtio,macaddr=1a:46:0b:ca:bc:7c -net dump,file=vm.pcap -net user,net=192.168.76.0/24,dhcpstart=192.168.76.9,hostfwd=udp::9000-:9000 \
    -kernel disk/boot/kernel.bin                            \
    -initrd disk/boot/initrd                                \
    -serial stdio                                           \
    -localtime                                              \
    -M pc