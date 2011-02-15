um_conf=/usr/share/initramfs-tools/conf-hooks.d/unionmount
mkdir -p "$(dirname "${um_conf}")"
echo "LIVE_UNIONMOUNT=true
export LIVE_UNIONMOUNT" > "${um_conf}"
