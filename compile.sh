#!/bin/bash
make distclean && make clean && make cooper_defconfig
echo $(date +%Y%m%d%H%M) > .version
time make ARCH=arm CROSS_COMPILE=/home/robin/toolchain/Linaro/bin/arm-eabi- modules zImage -j`grep processor /proc/cpuinfo | wc -l`
