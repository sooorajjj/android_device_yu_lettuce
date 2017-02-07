ifeq ($(HOST_OS),linux)
    # ifeq ($(TARGET_BUILD_VARIANT),)
        # ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true
        # endif
    # endif
endif