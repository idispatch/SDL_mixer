# This is an automatically generated record.
# The area between QNX Internal Start and QNX Internal End is controlled by
# the QNX IDE properties.

ifndef QCONFIG
QCONFIG=qconfig.mk
endif
include $(QCONFIG)

define PINFO
PINFO DESCRIPTION = SDL_mixer
endef

USEFILE=
NAME=SDL_mixer
SDL_INCPATH = $(PROJECT_ROOT)/../SDL/include
MIKMOD_INCPATH = $(PROJECT_ROOT)/../libmikmod/qnx
MODPLUG_INCPATH = $(PROJECT_ROOT)/../libmodplug/src
EXTRA_INCVPATH +=$(PROJECT_ROOT)/src $(SDL_INCPATH) $(MIKMOD_INCPATH) $(MODPLUG_INCPATH)

EXTRA_SRCVPATH += $(PROJECT_ROOT)/src

# Uncomment to enable mikmod music backend
#CCFLAGS += -D__BLACKBERRY__ -D__BB10__ -D__QNXNTO__ -DMOD_MUSIC=1 -DWAV_MUSIC=1 -DMODPLUG_MUSIC=1

CCFLAGS += -D__BLACKBERRY__ -D__BB10__ -D__QNXNTO__ -DWAV_MUSIC=1 -DMODPLUG_MUSIC=1

include $(MKFILES_ROOT)/qmacros.mk
ifndef QNX_INTERNAL
QNX_INTERNAL=$(PROJECT_ROOT)/.qnx_internal.mk
endif
include $(QNX_INTERNAL)

include $(MKFILES_ROOT)/qtargets.mk
OPTIMIZE_TYPE_g=none
OPTIMIZE_TYPE=$(OPTIMIZE_TYPE_$(filter g, $(VARIANTS)))
