# Assertions
TARGET_BOARD_INFO_FILE ?= device/zte/fujisan/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ailsa_ii,fujisan

# Recovery
TARGET_RECOVERY_FSTAB := device/zte/fujisan/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_fujisan
TARGET_RELEASETOOLS_EXTENSIONS := device/zte/fujisan
