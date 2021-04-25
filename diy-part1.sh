#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i "44i echo 'src/gz openwrt_all https://openwrt.download/ExtraPackages/all' > /etc/opkg/customfeeds.conf " package/lean/default-settings/files/zzz-default-settings
sed -i "45i echo 'src/gz openwrt_ipk https://openwrt.download/ExtraPackages/x86_64' >> /etc/opkg/customfeeds.conf " package/lean/default-settings/files/zzz-default-settings
