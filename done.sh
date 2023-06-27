#!/system/bin/sh
export PATH=/sbin:/system/sbin:/system/xbin:/system/bin
#Mount /system to overwrite
mount -o remount,rw /system /system

#Install apks
pm install -rtdg /mnt/udisk2/AA.apk
pm install -rtdg /mnt/udisk2/BackButton.apk
pm install -rtdg /mnt/udisk2/homebutton.apk
pm install -rtdg /mnt/udisk2/ES.apk

#End with reboot
sync
sleep 10
reboot
