#!/bin/bash

#1. 修改IP添加网关DNS
sed -i 's/192.168.1.1/10.0.0.5/g' openwrt/package/base-files/files/bin/config_generate

#2. 版本号里显示自己的名字
sed -i "s/OpenWrt /Bzlzm build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settiings
