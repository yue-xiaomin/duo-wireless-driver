CONFIG_BTUSB_AUTOSUSPEND = n
CONFIG_BTUSB_WAKEUP_HOST = n
CONFIG_BTCOEX = y

ifeq ($(CONFIG_BTUSB_AUTOSUSPEND), y)
	EXTRA_CFLAGS += -DCONFIG_BTUSB_AUTOSUSPEND
endif

ifeq ($(CONFIG_BTUSB_WAKEUP_HOST), y)
	EXTRA_CFLAGS += -DCONFIG_BTUSB_WAKEUP_HOST
endif

ifeq ($(CONFIG_BTCOEX), y)
	EXTRA_CFLAGS += -DCONFIG_BTCOEX
endif

ifneq ($(KERNELRELEASE),)
	obj-m := rtk_btusb.o
	rtk_btusb-y = rtk_coex.o rtk_misc.o rtk_bt.o
else
	ARCH ?= riscv
    CROSS_COMPILE ?=
	KVER := 5.10.4-tag-
	KSRC := /lib/modules/$(KVER)/build

all:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(shell pwd) modules

clean:
	rm -rf *.o *.mod.c *.mod.o *.mod *.ko *.symvers *.order *.a .Module.* .modules.*.cmd *.cmd *.*.cmd

endif
