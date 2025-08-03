repo init -u https://github.com/DerpFest-LOS/android_manifest.git -b 15.2 --git-lfs 
git clone https://github.com/xv2ice/local_manifests .repo/local_manifests
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh
repo sync
source build/envsetup.sh
lunch lineage_A51-bp1a-userdebug && mka derp
