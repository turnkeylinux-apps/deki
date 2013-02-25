define root.build/pre
		fab-apply-overlay license $O/root.build
endef

define root.build/post
		fab-install $O/root.build plan/mozroots
endef

WEBMIN_FW_TCP_INCOMING_REJECT = 8081

COMMON_CONF = apache-credit

CREDIT_LOCATION = ~ "^/(?!(skins/common/popups))"

include $(FAB_PATH)/common/mk/turnkey/lamp.mk
include $(FAB_PATH)/common/mk/turnkey.mk
