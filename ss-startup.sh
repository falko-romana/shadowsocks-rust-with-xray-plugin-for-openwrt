mkdir /tmp/ss-bin
cd /tmp/ss-bin

wget "https://github.com/falko-romana/shadowsocks-rust-with-xray-plugin-for-openwrt/raw/master/ss-local"
chmod +wrx ss-local

wget "https://github.com/falko-romana/shadowsocks-rust-with-xray-plugin-for-openwrt/raw/master/xray-plugin"
chmod +wrx xray-plugin

./ss-local -c "/etc/ss-data/config.json" --plugin "/tmp/ss-bin/xray-plugin" --protocol tun --outbound-bind-interface lo --tun-interface-name tun1
