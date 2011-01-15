#!/bin/bash -x
for i in boot/vmlinuz* ; do
    kernel="$(basename "$i")"
    version="${kernel##vmlinuz-}"
    initrd="boot/initrd.img-${version}"
    [ -f "$initrd" ] || update-initramfs -c -k "$version" || true
done
