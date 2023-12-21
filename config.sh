# repo init --depth=1 --git-lfs --no-repo-verify -u https://github.com/crdroidandroid/android.git -b 11.0 -g default,-mips,-darwin,-notdefault
repo init --depth=1 -u https://github.com/crdroidandroid/android.git -b 11.0 --git-lfs
git clone git@github.com:Sa-Sajjad/manifest.git --depth 1 -b cr-11 .repo/local_manifests
repo sync -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune
source build/envsetup.sh
lunch lineage_lavender-userdebug
export TZ=Asia/Dhaka
export SELINUX_IGNORE_NEVERALLOWS=true
export CONFIG_STATE_NOTIFIER=y
brunch lineage_lavender-userdebug
# make api-stubs-docs || echo no problem
# make system-api-stubs-docs || echo no problem
# make test-api-stubs-docs || echo no problem
# brunch lineage_lavender-userdebug
Snx-R