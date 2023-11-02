# duo-wireless-driver
WiFi Bluetooth driver


1.可添加到drivers/net/wireless/realtek下，配置编译进内核或者模块

2.也可通过以下命令编译成模块(CROSS_COMPILE、KSRC的路径换成自己的)
make ARCH=riscv CROSS_COMPILE=/home/.../duo-buildroot-sdk/host-tools/gcc/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl- KSRC=/home/.../duo-buildroot-sdk/linux_5.10/build/cv1800b_milkv_duo_sd -j4
