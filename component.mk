
COMPONENT_ADD_INCLUDEDIRS := include components/baresip/baresip/include components/re/re/include components/rem/rem/include
COMPONENT_PRIV_INCLUDEDIRS := include
COMPONENT_SRCDIRS := src

-include components/baresip/component.mk
-include components/re/component.mk
-include components/rem/component.mk
