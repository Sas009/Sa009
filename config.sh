repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android.git -b 11.0 -g default,-mips,-darwin,-notdefault
git clone git@github.com:Sa-Sajjad/manifest.git --depth 1 -b cr-11 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
source build/envsetup.sh
lunch lineage_lavender-userdebug
export TZ=Asia/Dhaka
export SELINUX_IGNORE_NEVERALLOWS=true
make api-stubs-docs || echo no problem
make system-api-stubs-docs || echo no problem
make test-api-stubs-docs || echo no problem
brunch lineage_lavender-userdebug
Snx-R