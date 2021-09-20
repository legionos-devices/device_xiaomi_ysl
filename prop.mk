#
# system.prop for ysl
#
<<<<<<< HEAD

# ART
PRODUCT_PROPERTY_OVERRIDES += \
dalvik.vm.dex2oat-filter=speed \
dalvik.vm.image-dex2oat-filter=speed

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
ro.maintainer.name=DinEsH(TokYo)

# Cpu
PRODUCT_PROPERTY_OVERRIDES += \
ro.processor.model=Snapdragon625

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
af.fast_track_multiplier=2 \
=======
# Audio
PRODUCT_PROPERTY_OVERRIDES += \
audio_para_version=QL1715-Audiopara-V03-20180302 \
acdb_id_para_version=QL1715-Audiopara-V03-20180302 \
audio.chk.cal.us=0 \
audio.chk.cal.spk=0 \
af.fast_track_multiplier=1 \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
audio.deep_buffer.media=true \
audio.offload.disable=true \
audio.offload.min.duration.secs=30 \
audio.offload.video=true \
<<<<<<< HEAD
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=7 \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.btstack.enable.splita2dp=false \
ro.vendor.audio.sdk.ssr=false \
ro.vendor.audio.sdk.fluencetype=fluence \
vendor.audio.flac.sw.decoder.24bit=true \
=======
persist.audio.parameter.ce=0 \
persist.dirac.acs.controller=qem \
persist.dirac.acs.ignore_error=1 \
persist.dirac.acs.storeSettings=1 \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.audio.hw.binder.size_kbyte=1024 \
persist.vendor.audio.speaker.prot.enable=false \
ro.audio.soundfx.dirac=true \
ro.af.client_heap_size_kbyte=7168 \
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=7 \
ro.vendor.audio.sdk.fluencetype=fluence \
ro.vendor.audio.sdk.ssr=false \
vendor.audio.dolby.ds2.enabled=false \
vendor.audio.dolby.ds2.hardbypass=false \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.hw.aac.encoder=true \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.offload.multiple.enabled=false \
<<<<<<< HEAD
vendor.audio.offload.track.enable=true \
vendor.audio.parser.ip.buffer.size=0 \
=======
vendor.audio.offload.passthrough=false \
vendor.audio.offload.track.enable=false \
vendor.audio.parser.ip.buffer.size=262144 \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
vendor.audio.playback.mch.downsample=true \
vendor.audio.pp.asphere.enabled=false \
vendor.audio.safx.pbe.enabled=true \
vendor.audio.tunnel.encode=false \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.audio_hal.period_size=192 \
vendor.voice.conc.fallbackpath=deep-buffer \
vendor.voice.path.for.pcm.voip=true \
vendor.voice.playback.conc.disabled=true \
vendor.voice.record.conc.disabled=false \
vendor.voice.voip.conc.disabled=true

<<<<<<< HEAD
# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
bluetooth.hfp.client=1 \
qcom.bluetooth.soc=smd \
ro.bluetooth.hfp.ver=1.7 \
ro.qualcomm.bt.hci_transport=smd
=======
# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
vendor.qcom.bluetooth.soc=smd \
ro.bluetooth.hfp.ver=1.7 \
ro.qualcomm.bt.hci_transport=smd \
ro.bluetooth.a2dp_offload.supported=false \
persist.bluetooth.a2dp_offload.disabled=true \
persist.bluetooth.bluetooth_audio_hal.disabled=true \
vendor.audio.feature.a2dp_offload.enable=false \
persist.vendor.qcom.bluetooth.enable.splita2dp=false \
persist.vendor.bt.a2dp.aac_whitelist=false \
ro.bluetooth.library_name=libbluetooth.so

# Blur
PRODUCT_PRODUCT_PROPERTIES += \
ro.sf.blurs_are_expensive=1 \
ro.surface_flinger.supports_background_blur=1 \
debug.sf.disable_backpressure=1
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
camera.display.lmax=1280x720 \
camera.display.umax=1920x1080 \
<<<<<<< HEAD
camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
camera.lowpower.record.enable=1 \
media.camera.ts.monotonic=1 \
persist.camera.gyro.disable=0 \
persist.camera.isp.clock.optmz=0 \
persist.camera.stats.test=5 \
persist.camera.HAL3.enabled=1 \
persist.camera.dual.camera=0 \
persist.camera.eis.enable=1 \
persist.vendor.qti.telephony.vt_cam_interface=2 \
vidc.enc.dcvs.extra-buff-count=2 \
vendor.camera.aux.packageblacklist=com.discord \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera2,com.google.android.GoogleCamera \
vendor.camera.aux.packagelist2=com.google.android.GoogleCameraWide,com.dual.GCam,com.Wide.GCam,com.Tele.GCam \
vendor.camera.hal1.packagelist=com.whatsapp \

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Cne/Dpm
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1 \
persist.vendor.dpm.feature=0
=======
vendor.camera.lowpower.record.enable=1 \
media.camera.ts.monotonic=1 \
persist.camera.CDS=off \
persist.camera.video.CDS=off \
persist.camera.dual.camera=0 \
persist.camera.gyro.disable=0 \
persist.camera.isp.clock.optmz=0 \
persist.camera.stats.test=5 \
persist.vendor.qti.telephony.vt_cam_interface=1 \
vidc.enc.dcvs.extra-buff-count=2 \
persist.camera.HAL3.enabled=1 \
vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.google.android.GoogleCamera \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi,com.longcheertel.cit 

# Cne
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1 \
persist.cne.feature=1

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.dpm.feature=11 \
persist.vendor.dpm.loglevel=0 \
persist.vendor.dpm.nsrm.bkg.evt=3955 \
persist.vendor.dpmhalservice.enable=1
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.coresight.config=stm-events

<<<<<<< HEAD
# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.egl.hw=0 \
=======

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
dalvik.vm.heapstartsize=14m \
dalvik.vm.heapgrowthlimit=192m \
dalvik.vm.heapsize=256m \
dalvik.vm.heaptargetutilization=0.75 \
dalvik.vm.heapminfree=6m \
dalvik.vm.heapmaxfree=8m

# Venom
PRODUCT_PROPERTY_OVERRIDES += \
ro.surface_flinger.running_without_sync_framework=true

# DHA Tunning
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.dha_tunnable=1

# SystemUI
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.fha_enable=true \
ro.sys.fw.bg_apps_limit=32 \
ro.config.dha_cached_max=16 \
ro.config.dha_empty_max=42 \
ro.config.dha_empty_init=32 \
ro.config.dha_lmk_scale=0.545 \
ro.config.dha_th_rate=2.3 \
ro.config.sdha_apps_bg_max=64 \
ro.config.sdha_apps_bg_min=8

# Smoothens UI
PRODUCT_PROPERTY_OVERRIDES += \
persist.service.lgospd.enable=0 \
persist.service.pcsync.enable=0


# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.cpurend.vsync=false \
debug.egl.hw=1 \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
debug.enable.sglscale=1 \
debug.gralloc.enable_fb_ubwc=1 \
debug.mdpcomp.logs=0 \
debug.sf.enable_hwc_vds=1 \
<<<<<<< HEAD
debug.sf.hw=0 \
debug.sf.latch_unsignaled=1 \
debug.cpurend.vsync=false \
debug.sf.recomputecrop=0 \
dev.pm.dyn_samplingrate=1 \
persist.debug.wfd.enable=1 \
=======
debug.sf.hw=1 \
debug.sf.latch_unsignaled=1 \
debug.sf.recomputecrop=0 \
dev.pm.dyn_samplingrate=1 \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
persist.demo.hdmirotationlock=false \
persist.hwc.enable_vds=1 \
persist.hwc.mdpcomp.enable=true \
ro.opengles.version=196610 \
ro.qualcomm.cabl=0 \
ro.sf.lcd_density=320 \
<<<<<<< HEAD
ro.vendor.display.cabl=2 \
sdm.debug.disable_skip_validate=1 \
vendor.display.disable_skip_validate=1 \
vendor.display.enable_default_color_mode=0 \
vendor.gralloc.enable_fb_ubwc=1
=======
debug.sdm.support_writeback=0 \
ro.vendor.display.cabl=0 \
sdm.debug.disable_skip_validate=1 \
vendor.display.disable_skip_validate=1 \
vendor.display.enable_default_color_mode=0 \
vendor.gralloc.enable_fb_ubwc=1 \
vendor.gralloc.disable_ahardware_buffer=1
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
<<<<<<< HEAD
persist.qfp=false

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
ro.fm.transmitter=false
=======
persist.qfp=false \
ro.fingerprint.cleanup.unused=false

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
hw.fm.init=0
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Frp
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/config

<<<<<<< HEAD
# GPS
PRODUCT_PROPERTY_OVERRIDES += \
persist.gps.qc_nlp_in_use=1 \
persist.loc.nlp_name=com.qualcomm.location \
ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
av.debug.disable.pers.cache=1 \
debug.sf.enable_hwc_vds=1 \
media.aac_51_output_enabled=true \
media.msm8956hw=0 \
media.stagefright.audio.sink=280 \
vendor.mm.enable.qcom_parser=1048575 \
mm.enable.smoothstreaming=true \
mmp.enable.3g2=true \
vendor.audio.hw.aac.encoder=true \
=======
# IOP properties
PRODUCT_PROPERTY_OVERRIDES += \
vendor.iop.enable_uxe=1 \
vendor.perf.iop_v3.enable=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
debug.stagefright.omx_default_rank.sw-audio=1 \
debug.stagefright.omx_default_rank=0 \
av.debug.disable.pers.cache=1 \
media.aac_51_output_enabled=true \
media.msm8956hw=0 \
media.stagefright.audio.sink=280 \
mm.enable.sec.smoothstreaming=true \
mmp.enable.3g2=true \
vendor.audio.hw.aac.encoder=true \
vendor.mm.enable.qcom_parser=1048575 \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
vendor.vidc.dec.downscalar_height=1088 \
vendor.vidc.dec.downscalar_width=1920 \
vendor.vidc.disable.split.mode=1 \
vendor.vidc.enc.disable.pq=true \
vendor.vidc.enc.disable_bframes=1 \
<<<<<<< HEAD
vendor.video.disable.ubwc=1 \
vendor.gralloc.enable_fb_ubwc=1 \
vendor.video.disable.ubwc=1

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.sys.fw.dex2oat_thread_count=8 \
ro.vendor.extension_library=libqti-perfd-client.so
=======
vendor.video.disable.ubwc=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.extension_library=libqti-perfd-client.so \
ro.vendor.qti.sys.fw.bservice_enable=true \
ro.sys.fw.dex2oat_thread_count=8 

#QTI Performance
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.va_aosp.support=1 
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.use_data_netmgrd=true \
persist.data.netmgrd.qos.enable=true \
persist.vendor.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
<<<<<<< HEAD
persist.rild.nitz_plmn="" \
persist.rild.nitz_long_ons_0="" \
persist.rild.nitz_long_ons_1="" \
persist.rild.nitz_long_ons_2="" \
persist.rild.nitz_long_ons_3="" \
persist.rild.nitz_short_ons_0="" \
persist.rild.nitz_short_ons_1="" \
persist.rild.nitz_short_ons_2="" \
persist.rild.nitz_short_ons_3=""
=======
persist.vendor.radio.nitz_plmn="" \
persist.vendor.radio.nitz_lons_0="" \
persist.vendor.radio.nitz_lons_1="" \
persist.vendor.radio.nitz_lons_2="" \
persist.vendor.radio.nitz_lons_3="" \
persist.vendor.radio.nitz_sons_0="" \
persist.vendor.radio.nitz_sons_1="" \
persist.vendor.radio.nitz_sons_2="" \
persist.vendor.radio.nitz_sons_3=""
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
DEVICE_PROVISIONED=1 \
<<<<<<< HEAD
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.radio.multisim.config=dsds \
persist.radio.VT_ENABLE=1 \
persist.radio.volte.dan_support=true \
persist.sys.cust.lte_config=true \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.jbims=1 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sib16_support=1 \
persist.vendor.data.iwlan.enable=true \
persist.dbg.ims_volte_enable=1 \
persist.data.iwlan=1 \
persist.data.iwlan.ipsec.ap=1 \
ril.subscription.types=NV,RUIM \
rild.libargs=-d/dev/smd0 \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
ro.telephony.iwlan_operation_mode=legacy \
ro.telephony.call_ring.multiple=false \
ro.telephony.default_network=22,20 \
persist.sys.fflag.override.settings_network_and_internet_v2=true \
service.qti.ims.enabled=1 \
persist.vendor.vt.supported=1 \
persist.vendor.sys.cnd.iwlan=1 \
persist.vendor.cne.logging.qxdm=3974

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.surface_flinger.protected_contents=true

PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.early_phase_offset_ns=1500000 \
debug.sf.early_app_phase_offset_ns=1500000 \
debug.sf.early_gl_phase_offset_ns=3000000 \
debug.sf.early_gl_app_phase_offset_ns=15000000

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
persist.timed.enable=true \
persist.vendor.delta_time.enable=true \
=======
persist.data.iwlan.enable=true \
persist.dbg.ims_volte_enable=1 \
persist.dbg.volte_avail_ovr=1 \
persist.data.iwlan=1 \
persist.data.iwlan.ipsec.ap=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.vendor.radio.aosp_usr_pref_sel=true \
persist.radio.calls.on.ims=0 \
persist.radio.csvt.enabled=false \
persist.radio.jbims=0 \
persist.radio.mt_sms_ack=20 \
persist.radio.multisim.config=dsds \
persist.radio.videopause.mode=1 \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.hw_mbn_update=0 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sw_mbn_update=0 \
persist.vendor.radio.sib16_support=1 \
ril.subscription.types=NV,RUIM \
rild.libargs=-d/dev/smd0 \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
persist.vendor.radio.redir_party_num=1 \
ro.telephony.call_ring.multiple=false \
ro.telephony.default_network=22,20 \
service.qti.ims.enabled=1 \
telephony.lteOnCdmaDevice=1 \
persist.radio.VT_ENABLE=1 \
persist.radio.volte.dan_support=true \
persist.sys.cust.lte_config=true \
ro.telephony.iwlan_operation_mode=legacy \
persist.vendor.vt.supported=1 \
persist.vendor.data.iwlan.enable=true \
persist.vendor.sys.cnd.iwlan=1 \
persist.vendor.cne.logging.qxdm=3974 \
persist.vendor.radio.data_con_rprt=1 \
persist.sys.fflag.override.settings_network_and_internet_v2=true

# RCS
PRODUCT_PROPERTY_OVERRIDES += \
persist.rcs.supported=1

   
# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
persist.timed.enable=true \
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
persist.delta_time.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10

# UI
PRODUCT_PROPERTY_OVERRIDES += \
sys.use_fifo_ui=1

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
<<<<<<< HEAD
persist.vendor.usb.config.extra=none
=======
persist.vendor.usb.config.extra=none \
persist.sys.usb.config.extra=none \
persist.sys.usb.diag_mdlog_enable=false

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp,adb \
ro.adb.secure=0 \
ro.secure=0 \
ro.debuggable=1

>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

<<<<<<< HEAD
# Zygote preforking
PRODUCT_PROPERTY_OVERRIDES += \
persist.device_config.runtime_native.usap_pool_enabled=true
=======
# Wifi-Display
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.wfd.enable=1 \
persist.sys.wfd.virtual=0

# Zram-writeback
ro.zram.mark_idle_delay_mins=60 
ro.zram.first_wb_delay_mins=180
ro.zram.periodic_wb_delay_hours=24
vendor.qc2.use.bqpool=1

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.early_phase_offset_ns=1500000 \
debug.sf.early_app_phase_offset_ns=1500000 \
debug.sf.early_gl_phase_offset_ns=3000000 \
debug.sf.early_gl_app_phase_offset_ns=15000000 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.max_virtual_display_dimension=4096 \
ro.surface_flinger.protected_contents=true
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
