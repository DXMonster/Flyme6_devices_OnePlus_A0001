#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10276864 56abe4ffbadf78faa5a6142049a092c1ce9836c7 7510016 e319c6e8068d5141d4bf0d7d5250eb3b1a0b94d7
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10276864:56abe4ffbadf78faa5a6142049a092c1ce9836c7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7510016:e319c6e8068d5141d4bf0d7d5250eb3b1a0b94d7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 56abe4ffbadf78faa5a6142049a092c1ce9836c7 10276864 e319c6e8068d5141d4bf0d7d5250eb3b1a0b94d7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
