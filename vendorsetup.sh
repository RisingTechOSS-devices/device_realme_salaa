echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Vendor tree [1/5]'
# Vendor
rm -rf vendor/realme/salaa
if [ ! -d "vendor/realme/salaa" ]; then
    mkdir -p vendor/realme/salaa
    git clone https://github.com/EvilAnsh/android_vendor_realme_salaa.git -b fourteen vendor/realme/salaa
fi

echo 'Cloning Kernel tree [2/5]'
# Kernel
rm -rf kernel/realme/mt6785
if [ ! -d "kernel/realme/mt6785" ]; then
    mkdir -p kernel/realme/mt6785
    git clone https://github.com/stormbreaker-project/kernel_realme_salaa.git -b 14 kernel/realme/mt6785
fi

echo 'Cloning Mediatek SEpolicy_vndr [3/5]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
fi

echo 'Cloning Hardware Mediatek [4/5]'
# Hardware Mediatek
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-21 hardware/mediatek
fi

echo 'Cloning Hardware Oplus [5/5]' 
# Hardware Oplus
rm -rf hardware/oplus
if [ ! -d "hardware/oplus" ]; then
    mkdir -p hardware/oplus
    git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-21 hardware/oplus
fi

echo 'Completed, Now proceeding to lunch'
