#!/bin/bash

git remote add fw-api http://source.codeaurora.cn/quic/la/platform/vendor/qcom-opensource/wlan/fw-api/
git remote add qca-wifi-host-cmn http://source.codeaurora.cn/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn/
git remote add qcacld-3.0 http://source.codeaurora.cn/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0/
git remote add audio-kernel http://source.codeaurora.cn/quic/la/platform/vendor/opensource/audio-kernel/
git remote add camera-kernel http://source.codeaurora.cn/quic/la/platform/vendor/opensource/camera-kernel/
git remote add dataipa http://source.codeaurora.cn/quic/la/platform/vendor/opensource/dataipa/
git remote add display-drivers http://source.codeaurora.cn/quic/la/platform/vendor/opensource/display-drivers/
git remote add video-driver http://source.codeaurora.cn/quic/la/platform/vendor/opensource/video-driver/
git remote add devicetree https://github.com/TingyiChen/android_kernel_qcom_devicetree
echo "Input: 1.Add subtree 2.Upstream"
read cmd_type
echo "Input caf tag:"
read caf_tag

case "$cmd_type" in
	"1")
	git subtree add --prefix=drivers/staging/fw-api fw-api $caf_tag
	git subtree add --prefix=drivers/staging/qca-wifi-host-cmn qca-wifi-host-cmn $caf_tag
	git subtree add --prefix=drivers/staging/qcacld-3.0 qcacld-3.0 $caf_tag
	git subtree add --prefix=techpack/audio audio-kernel $caf_tag
	git subtree add --prefix=techpack/camera camera-kernel $caf_tag
	git subtree add --prefix=techpack/dataipa dataipa $caf_tag
	git subtree add --prefix=techpack/display display-drivers $caf_tag
	git subtree add --prefix=techpack/video video-driver $caf_tag
	git subtree add --prefix=arch/arm64/boot/dts/vendor devicetree LA.UM.9.14
	;;
	"2")
	git subtree pull --prefix=drivers/staging/fw-api fw-api $caf_tag
	git subtree pull --prefix=drivers/staging/qca-wifi-host-cmn qca-wifi-host-cmn $caf_tag
	git subtree pull --prefix=drivers/staging/qcacld-3.0 qcacld-3.0 $caf_tag
	git subtree pull --prefix=techpack/audio audio-kernel $caf_tag
	git subtree pull --prefix=techpack/camera camera-kernel $caf_tag
	git subtree pull --prefix=techpack/dataipa dataipa $caf_tag
	git subtree pull --prefix=techpack/display display-drivers $caf_tag
	git subtree pull --prefix=techpack/video video-driver $caf_tag
	git subtree pull --prefix=arch/arm64/boot/dts/vendor devicetree LA.UM.9.14
	;;
esac
