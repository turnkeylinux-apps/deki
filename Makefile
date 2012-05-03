define root.build/pre
		fab-chroot $O/root.build --script $(COMMON_CONF_PATH)/msttcorefonts
		fab-apply-overlay $(COMMON_OVERLAYS_PATH)/msttcorefonts $O/root.build
		fab-apply-overlay license $O/root.build
endef

define root.build/post
		fab-chroot $O/root.build "rm -rf /tmp/msfonts"
		fab-install $O/root.build plan/mozroots
endef

WEBMIN_FW_TCP_INCOMING_REJECT = 8081

COMMON_CONF = apache-credit

CREDIT_LOCATION = ~ "^/(?!(skins/common/popups))"

include $(FAB_PATH)/common/mk/turnkey/lamp.mk
include $(FAB_PATH)/common/mk/turnkey.mk
