cmd_/home/yxm/milk-v/CV180x/usb无线驱动/aic8800_porting_package/USB/driver_fw/drivers/aic8800/modules.order := {   cat /home/yxm/milk-v/CV180x/usb无线驱动/aic8800_porting_package/USB/driver_fw/drivers/aic8800/aic_load_fw/modules.order;   cat /home/yxm/milk-v/CV180x/usb无线驱动/aic8800_porting_package/USB/driver_fw/drivers/aic8800/aic8800_fdrv/modules.order; :; } | awk '!x[$$0]++' - > /home/yxm/milk-v/CV180x/usb无线驱动/aic8800_porting_package/USB/driver_fw/drivers/aic8800/modules.order
