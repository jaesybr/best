TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = best
best_FILES = Tweak.x
best_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
