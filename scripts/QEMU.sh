#!/bin/sh

# Necessary to allow for memory larger than 640
# Check zsh ulimit -a
# -d: data seg size (kbytes)
ulimit -d 6000000

# qemu
qemu-system-x86_64 \
                    -m 2G\
                    -vga vmware\
                    -machine type=pc\
                    -usb\
                    -net nic\
                    -net user,hostfwd=tcp::2222-:22\
                    -drive format=raw,file=/home/pau/QEMU/ubuntu.img
#,hostfwd=tcp::2222-:22\
#-soundhw pcspk,hda\


