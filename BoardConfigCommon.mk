# inherit from the proprietary version
-include vendor/hp/tenderloin/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/hp/tenderloin-common/include 

#art Required to prevent overlapping of memory
LIBART_IMG_BASE := 0x60000000
ART_DONT_CHECK_GAP := true

# We have so much memory 3:1 split is detrimental to us.
TARGET_USES_2G_VM_SPLIT := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
BOARD_KERNEL_IMAGE_NAME := uImage

TARGET_BOOTLOADER_BOARD_NAME := tenderloin
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a8
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_HCI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/hp/tenderloin-common/bluetooth
BLUETOOTH_HCIATTACH_USING_PROPERTY = true

TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

RECOVERY_FSTAB_VERSION := 2

# QCOM BSP Enabled
TARGET_USES_QCOM_BSP := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DICS_CAMERA_BLOB -DQCOM_BSP

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WLAN_DEVICE                := ath6kl

TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Audio
BOARD_USES_LEGACY_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true

# Define egl.cfg location
BOARD_EGL_CFG := device/hp/tenderloin-common/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_NO_ADAPTIVE_PLAYBACK := true

# QCOM HAL
BOARD_USES_QCOM_HARDWARE := true

# Webkit workaround
TARGET_FORCE_CPU_UPLOAD := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_FIRST_CAMERA_FRONT_FACING := true
BOARD_CAMERA_USE_ENCODEDATA := true
BOARD_USES_LEGACY_MMAP := true

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
TARGET_INVENSENSE_SENSOR := 60xx
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
USE_CAMERA_STUB := false

# tenderloin- these kernel settings are temporary to complete build
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x40200000
BOARD_PAGE_SIZE := 2048
TARGET_KERNEL_NO_MODULES := true
BOARD_NEEDS_CUTILS_LOG := true

TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/hp/tenderloin-common/releasetools/tenderloin_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/hp/tenderloin-common/releasetools/tenderloin_ota_from_target_files

BOARD_USES_UBOOT := true
BOARD_USES_UBOOT_MULTIIMAGE := true

# use dosfsck from dosfstools
BOARD_USES_CUSTOM_FSCK_MSDOS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8960

TARGET_RECOVERY_INITRC := device/hp/tenderloin-common/recovery/init.rc
BOARD_USES_ALT_KMSG_LOCATION := "/proc/last_klog"

# tenderloin - these partition sizes are temporary to complete build
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

TARGET_RELEASETOOLS_EXTENSIONS := device/hp/common

BOARD_HAS_SDCARD_INTERNAL := false
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/hp/tenderloin-common/graphics.c
BOARD_CUSTOM_BOOTIMG_MK := device/hp/tenderloin-common/uboot-bootimg.mk

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# Twrp
DEVICE_RESOLUTION = 1024x768
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TW_WHITELIST_INPUT := "HPTouchpad"

# SELinux
BOARD_SEPOLICY_DIRS += \
        device/hp/tenderloin-common/sepolicy

BOARD_SEPOLICY_UNION += \
        healthd.te
