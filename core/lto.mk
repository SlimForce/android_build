######
# LTO #
#######

LTO_CFLAGS := \
-flto=jobserver \
-fno-fat-lto-objects \
-fuse-linker-plugin \
-D__LTO__ \
-funit-at-a-time \
-flto-report # so we will see what it does and what is wrong

LTO_LDFLAGS := \
$($(combo_2nd_arch_prefix)TARGET_LTO_CFLAGS) -Wl,-flto

LOCAL_DISABLE_LTO := \
	libwebrtc_audio_preprocessing \
	libwebrtc_system_wrappers \
	skia_skia_opts_gyp \
	ui_gfx_gfx_geometry_gyp \
	libutils \
	libpixelflinger \
	libziparchive \
	libEGL \
	libstagefright \
	libc \
	healthd \
	mkfs.f2fs \
	adbd \
	init \
	libdl \
	libm \
	libjemalloc \
	libselinux \
	libcutils \
	e2fsprogs \
	libadf \
	libminui \
	libext2_uuid \
	libext2_uuid_static \
	libext2_blkid \
	liblogwrap \
	liblog \
	libfs_mgr \
	libvpx \
	libc_bionic \
	libc_gdtoa \
	libc_netbsd \
	libc_freebsd \
	libc_dns \
	libc_openbsd \
	libc_cxa \
	libc_syscalls \
	libc_aeabi \
	libc_common \
	libc_nomalloc \
	libc_malloc \
	libc_stack_protector \
	libc_tzcode \
	third_party_libvpx_libvpx_gyp \
	\
	libvpx_asm_offsets_vp8 \
	libvpx_asm_offsets_vpx_scale \
	third_party_webrtc_base_rtc_base_gyp \
	third_party_webrtc_base_rtc_base_approved_gyp \
	third_party_webrtc_libjingle_xmllite_rtc_xmllite_gyp \
	third_party_webrtc_modules_media_file_gyp \
	third_party_webrtc_system_wrappers_source_system_wrappers_gyp \
	third_party_webrtc_system_wrappers_source_cpu_features_android_gyp \
	third_party_webrtc_modules_video_capture_module_impl_gyp \
	third_party_webrtc_modules_video_capture_module_gyp \
	third_party_webrtc_modules_webrtc_utility_gyp \
	third_party_webrtc_modules_audio_coding_module_gyp \
	third_party_webrtc_modules_CNG_gyp \
	third_party_webrtc_common_audio_common_audio_gyp \
	third_party_webrtc_common_audio_common_audio_neon_gyp \
	third_party_webrtc_modules_G711_gyp \
	third_party_webrtc_modules_G722_gyp \
	third_party_webrtc_modules_iLBC_gyp \
	third_party_webrtc_modules_iSAC_gyp \
	third_party_webrtc_modules_iSACFix_gyp \
	third_party_webrtc_modules_isac_neon_gyp \
	third_party_webrtc_modules_PCM16B_gyp \
	third_party_webrtc_modules_webrtc_opus_gyp \
	third_party_webrtc_modules_neteq_gyp \
	third_party_webrtc_modules_webrtc_video_coding_gyp \
	third_party_webrtc_modules_webrtc_i420_gyp \
	third_party_webrtc_common_video_common_video_gyp \
	third_party_webrtc_modules_video_coding_utility_video_coding_utility_gyp \
	third_party_webrtc_modules_video_coding_codecs_vp8_webrtc_vp8_gyp \
	third_party_libvpx_libvpx_intrinsics_neon_gyp \
	third_party_webrtc_modules_video_render_module_impl_gyp \
	third_party_webrtc_modules_video_render_module_gyp \
	third_party_webrtc_voice_engine_voice_engine_gyp \
	third_party_webrtc_modules_audio_conference_mixer_gyp \
	third_party_webrtc_modules_audio_processing_gyp \
	third_party_webrtc_modules_audioproc_debug_proto_gyp \
	third_party_webrtc_modules_audio_processing_neon_gyp \
	lib_core_neon_offsets \
	third_party_webrtc_modules_audio_device_gyp \
	third_party_webrtc_modules_bitrate_controller_gyp \
	third_party_webrtc_modules_rtp_rtcp_gyp \
	third_party_webrtc_modules_paced_sender_gyp \
	third_party_webrtc_modules_remote_bitrate_estimator_gyp \
	third_party_webrtc_modules_remote_bitrate_estimator_rbe_components_gyp \
	third_party_webrtc_webrtc_gyp \
	third_party_webrtc_webrtc_common_gyp \
	third_party_webrtc_video_engine_video_engine_core_gyp \
	third_party_webrtc_modules_video_processing_gyp



ifeq (1,$(words $(filter $(LOCAL_DISABLE_LTO),$(LOCAL_MODULE))))
  ifdef LOCAL_CFLAGS
    LOCAL_CONLYFLAGS += -fno-lto
  else
    LOCAL_CONLYFLAGS := -fno-lto
  endif
  ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += -fno-lto
  else
    LOCAL_CPPFLAGS := -fno-lto
  endif
  ifndef LOCAL_LDFLAGS
    LOCAL_LDFLAGS := -Wl,-fno-lto
  else
    LOCAL_LDFLAGS += -Wl,-fno-lto
  endif
endif

ifneq (1,$(words $(filter $(LOCAL_DISABLE_LTO),$(LOCAL_MODULE))))
  ifdef LOCAL_CFLAGS
    LOCAL_CONLYFLAGS += $(LTO_CFLAGS)
  else
    LOCAL_CONLYFLAGS := $(LTO_CFLAGS)
  endif
  ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += $(LTO_CFLAGS)
  else
    LOCAL_CPPFLAGS := $(LTO_CFLAGS)
  endif
  ifndef LOCAL_LDFLAGS
    LOCAL_LDFLAGS := $(LTO_LDFLAGS)
  else
    LOCAL_LDFLAGS += $(LTO_LDFLAGS)
endif
endif

