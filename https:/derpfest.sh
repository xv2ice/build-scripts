repo init -u https://github.com/DerpFest-AOSP/android_manifest.git -b 16 --git-lfs
git clone -b lineage-23.0 https://github.com/Parbindar7/local_manifest_exynos9611.git .repo/local_manifests
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh
repo sync
source build/envsetup.sh
lunch lineage_a51-bp2a-userdebug && mka derp
