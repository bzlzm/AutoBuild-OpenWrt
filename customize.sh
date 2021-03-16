#!/bin/bash

#1. 修改IP添加网关DNS
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i "set network.$1.gateway='10.0.0.1' /g" openwrt/package/base-files/files/bin/config_generate
sed -i "set network.$1.dns='223.5.5.5' /g" openwrt/package/base-files/files/bin/config_generate

#2. 版本号里显示自己的名字
sed -i "s/OpenWrt /Bzlzm build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settiings

#3. 修改用户名环境变量
sed -i "PS1='\[\e[31;1m\][\u\[\e[0m\]@\[\e[33;1m\]\h\[\e[0m\] \[\e[32;1m\]\W]\$ \[\e[0m\]' /g" openwrt/package/base-files/files/etc/profile
