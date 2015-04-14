# PThread
LOCAL_DISABLE_PTHREAD := \
       bluetooth \
       bluetooth.default \
       libc_netbsd

ifneq (1,$(words $(filter $(LOCAL_DISABLE_PTHREAD),$(LOCAL_MODULE))))
  ifdef LOCAL_CFLAGS
    LOCAL_CFLAGS += -pthread
  else
    LOCAL_CFLAGS := -pthread
  endif
endif
