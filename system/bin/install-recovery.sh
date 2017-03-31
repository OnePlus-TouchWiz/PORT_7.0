#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23287084:6a6ce72b5b2e8801913d40294b96dfa9c045aad8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15193384:9b747c9556d054e38050cfef07893e4b2c5c68a8 EMMC:/dev/block/bootdevice/by-name/recovery 6a6ce72b5b2e8801913d40294b96dfa9c045aad8 23287084 9b747c9556d054e38050cfef07893e4b2c5c68a8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
