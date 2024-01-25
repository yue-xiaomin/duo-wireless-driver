# duo-wireless-driver

来源于设计的底板，板载的usb无线模块，该仓库为经过移植和测试的驱动。

**milkv duo底板**

底板开源至嘉立创:[milkv-duo board](https://oshwhub.com/devss/milkvduoboard)

**驱动编译**

1.可添加到`drivers/net/wireless/realtek`下，配置编译进内核或者模块

2.也可通过以下命令编译成模块(`CROSS_COMPILE`、`KSRC`的路径换成自己的)

```
make ARCH=riscv CROSS_COMPILE=/home/.../duo-buildroot-sdk/host-tools/gcc/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl- KSRC=.../duo-buildroot-sdk/linux_5.10/build/cv1800b_milkv_duo_sd -j4
```
