# hwmon-module-test

This module tries to build an absolute minimum `hwmon` device which abstracts `sysfs` attribute creation hassle to API.

```sh
make
sudo insmod peri.ko && lsmod | grep peri || echo "Failed to insmod"
cat /sys/module/peri/drivers/platform:peri-device/peri-device/hwmon/hwmon?/temp1_emergency
sudo rmmod peri && lsmod | grep peri && echo "Failed to rmmod"
```
