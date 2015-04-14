MY_LOCAL_DISABLE_LTO := \
 libspeexresampler \
 ip \
 tc \
 libaudioresampler \
 libwebrtc_audio_preprocessing \
    libwebrtc_spl \
    libwebrtc_resampler \
    libwebrtc_apm \
    libwebrtc_apm_utility \
    libwebrtc_vad \
    libwebrtc_ns \
    libwebrtc_agc \
    libwebrtc_aec \
    libwebrtc_aecm \
    libwebrtc_system_wrappers \
    libwebrtc_aecm_neon \
    libwebrtc_ns_neon \
 libavcodec \
 libart-compiler \
 libskia \
        libGLESv2 \
        libEGL \
        libz \
        libjpeg \
        libpng \
        libicuuc \
        libicui18n \
        libexpat \
        libft2 \
        libcutils \
        libwebp-decode \
        libwebp-encode \
        libgif \
        libsfntly \
 libstagefright_soft_flacenc \
 libstagefright_soft_g711dec \
 libstagefright_soft_gsmdec \
 libstagefright_soft_h264dec \
 libstagefright_soft_h264enc \
 libstagefright_soft_hevcdec \
        libffmpeg_utils \
        libavutil \
        libhevcdec  \
        libstagefright \
        libstagefright_omx \
        libstagefright_foundation \
 librilutils_static \
 librilutils \
 libril \
 libreference-ril \
 rild \
 screenrecord

######
# LTO #
#######

LTO_CFLAGS := \
-flto=jobserver \
-fno-fat-lto-objects \
-fuse-linker-plugin \
-D__LTO__ \
-funit-at-a-time \
-flto-report

LTO_LDFLAGS := \
$($(combo_2nd_arch_prefix)LTO_CFLAGS) -Wl,-flto

LOCAL_DISABLE_LTO := \
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
	libvpx_asm_offsets_vp8 \
	libvpx_asm_offsets_vpx_scale \
	third_party_libvpx_libvpx_intrinsics_neon_gyp \
	sql_sql_gyp \
	third_party_sqlite_sqlite_gyp \
	libwebrtc_audio_preprocessing \
	libwebrtc_system_wrappers \
	skia_skia_opts_gyp \
	ui_gfx_gfx_geometry_gyp \
	lib_core_neon_offsets \
	\
	\
	\
	base_base_static_gyp \
	base_third_party_dynamic_annotations_dynamic_annotations_gyp \
	cc_cc_gyp \
	base_base_gyp \
	base_allocator_allocator_extension_thunks_gyp \
	third_party_modp_b64_modp_b64_gyp \
	third_party_ashmem_ashmem_gyp \
	third_party_libevent_libevent_gyp \
	third_party_protobuf_protobuf_lite_gyp \
	crypto_crypto_gyp \
	third_party_boringssl_boringssl_gyp \
	third_party_re2_re2_gyp \
	third_party_smhasher_cityhash_gyp \
	base_base_i18n_gyp \
	third_party_zlib_zlib_gyp \
	third_party_sfntly_sfntly_gyp \
	third_party_expat_expat_gyp \
	third_party_freetype_ft2_gyp \
	third_party_libpng_libpng_gyp \
	third_party_harfbuzz_ng_harfbuzz_ng_gyp \
	third_party_libjpeg_turbo_libjpeg_gyp \
	third_party_angle_src_translator_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_angle_src_preprocessor_gyp \
	ipc_ipc_gyp \
	media_media_gyp \
	third_party_libyuv_libyuv_gyp \
	third_party_libyuv_libyuv_neon_gyp \
	third_party_opus_opus_gyp \
	url_url_lib_gyp \
	media_shared_memory_support_gyp \
	media_player_android_gyp \
	base_base_prefs_gyp \
	content_content_browser_gyp \
	content_content_common_gyp \
	net_net_gyp \
	sdch_sdch_gyp \
	tools_json_schema_compiler_api_gen_util_gyp \
	storage_storage_gyp \
	sql_sql_gyp \
	third_party_sqlite_sqlite_gyp \
	libft2 \
	storage_storage_common_gyp \
	third_party_leveldatabase_leveldatabase_gyp \
	third_party_libwebp_libwebp_dec_gyp \
	third_party_libwebp_libwebp_dsp_gyp \
	third_party_libwebp_libwebp_dsp_neon_gyp \
	third_party_libwebp_libwebp_utils_gyp \
	third_party_libwebp_libwebp_demux_gyp \
	third_party_libwebp_libwebp_enc_gyp \
	third_party_ots_ots_gyp \
	third_party_brotli_brotli_gyp \
	third_party_qcms_qcms_gyp \
	v8_tools_gyp_v8_base_gyp \
	v8_tools_gyp_v8_libbase_gyp \
	v8_tools_gyp_v8_snapshot_gyp \
	third_party_iccjpeg_iccjpeg_gyp \
	third_party_openmax_dl_dl_openmax_dl_gyp \
	third_party_openmax_dl_dl_openmax_dl_armv7_gyp \
	third_party_libxml_libxml_gyp \
	third_party_libxslt_libxslt_gyp \
	gin_gin_gyp \
	google_apis_google_apis_gyp \
	third_party_zlib_google_zip_gyp \
	third_party_zlib_minizip_gyp \
	content_browser_service_worker_proto_gyp \
	content_browser_speech_proto_speech_proto_gyp \
	content_content_child_gyp \
	content_content_utility_gyp \
	courgette_courgette_lib_gyp \
	third_party_lzma_sdk_lzma_sdk_gyp \
	cc_cc_surfaces_gyp \
	net_http_server_gyp \
	printing_printing_gyp \
	sandbox_sandbox_services_gyp \
	sandbox_seccomp_bpf_gyp \
	sandbox_seccomp_bpf_helpers_gyp \
	third_party_libphonenumber_libphonenumber_gyp \
	third_party_libphonenumber_libphonenumber_without_metadata_gyp \
	third_party_fips181_fips181_gyp \
	third_party_libaddressinput_libaddressinput_util_gyp \
	content_content_renderer_gyp \
	cc_blink_cc_blink_gyp \
	media_blink_media_blink_gyp \
	ui_native_theme_native_theme_gyp \
	third_party_libsrtp_libsrtp_gyp \
	third_party_usrsctp_usrsctplib_gyp \
	content_content_app_both_gyp \
	v8_tools_gyp_v8_gyp \
	third_party_icu_icui18n_gyp \
	third_party_icu_system_icu_gyp \
	third_party_icu_icuuc_gyp

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
  LOCAL_ALREADY_DISABLE_LTO := false
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
