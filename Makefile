ARCHS = arm64 arm64e
TARGET = iphone:clang:11.2
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ByeAnnoyingCamera

ByeAnnoyingCamera_FILES = Tweak.xm
ByeAnnoyingCamera_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
