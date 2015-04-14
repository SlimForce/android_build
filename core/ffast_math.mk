
LOCAL_FORCE_FFAST_MATH := \
	libskia \
	libGLESv2 \
	libEGL \
	libGLESv1_CM \
	libGLES_android \
	skia_skia_gyp \
	ui_gfx_gfx_gyp \
	ui_gfx_ipc_gfx_ipc_gyp \
	ui_gl_gl_gyp \
	libui \
	libgui \
	third_party_WebKit_Source_core_webcore_rendering_gyp \
	third_party_WebKit_Source_core_webcore_svg_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	third_party_WebKit_Source_core_webcore_html_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gy \
	third_party_WebKit_Source_web_blink_web_gyp \
	gpu_gl_in_process_context \
	ui_base_ui_base_gyp \
	ui_gfx_gfx_geometry_gyp \
	ui_shell_dialogs_shell_dialogs_gyp \
	gpu_gpu_ipc_gyp \
	gpu_gles2_c_lib_gyp \
	gpu_gles2_implementation_gyp \
	gpu_gl_in_process_context_gyp \
	gpu_skia_bindings_gpu_skia_bindings_gyp \
	libfilterfw_jni \
	libfilterfw_native \
	libandroid_runtime \
	cc_cc_gyp

LOCAL_DISABLE_SINGLE_PRECISION :=


ifneq ($(filter $(LOCAL_FORCE_FFAST_MATH), $(LOCAL_MODULE)),)


ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -ffast-math -ftree-vectorize
else
LOCAL_CONLYFLAGS := -ffast-math -ftree-vectorize
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -ffast-math -ftree-vectorize
else
LOCAL_CPPFLAGS := -ffast-math -ftree-vectorize
endif

### Some modules doesn't like forcing single precision, until we fix casting errors, let's disable this optimization
ifeq ($(filter $(LOCAL_DISABLE_SINGLE_PRECISION), $(LOCAL_MODULE)),)
LOCAL_CONLYFLAGS += -fsingle-precision-constant
LOCAL_CPPFLAGS   += -fsingle-precision-constant
endif

endif
