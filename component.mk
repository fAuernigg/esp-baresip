
COMPONENT_ADD_INCLUDEDIRS := include components/baresip/baresip/include components/re/re/include components/rem/rem/include
COMPONENT_PRIV_INCLUDEDIRS := include
COMPONENT_SRCDIRS := src


############################################################
# rem
############################################################
COMPONENT_ADD_INCLUDEDIRS += components/rem/rem/include

COMPONENT_SRCDIRS += \
	components/rem/rem/src/fir \
	components/rem/rem/src/au \
	components/rem/rem/src/goertzel \
	components/rem/rem/src/dtmf \
	components/rem/rem/src/auresamp \
	components/rem/rem/src/aac \
	components/rem/rem/src/aumix \
	components/rem/rem/src/g711 \
	components/rem/rem/src/auconv \
	components/rem/rem/src/aubuf \
	components/rem/rem/src/aufile \
	components/rem/rem/src/autone \
	components/rem/rem/src/vid \
	components/rem/rem/src/vidconv \

CFLAGS	+= -DHAVE_SELECT -DHAVE_SELECT_H
CFLAGS	+= -DHAVE_INET_NTOP -DHAVE_INET_PTON -DHAVE_PTHREAD -DHAVE_STRERROR_R
CFLAGS	+= -DHAVE_INTTYPES_H -DHAVE_STDBOOL_H -DHAVE_FORK
CFLAGS	+= -DHAVE_PWD_H
CFLAGS  += -DHAVE_SIGNAL -DHAVE_SYS_TIME_H
CFLAGS  += -DHAVE_UNISTD_H -DHAVE_STRINGS_H
CFLAGS	+= -DHAVE_ROUTE_LIST

CFLAGS	+= -Wall
CFLAGS	+= -Wmissing-declarations
CFLAGS	+= -Wmissing-prototypes
CFLAGS	+= -Wbad-function-cast
CFLAGS	+= -Wnested-externs
CFLAGS	+= -Wshadow
CFLAGS	+= -Waggregate-return
CFLAGS  += -DLINUX -g 
CFLAGS  += -Os


############################################################
# re
############################################################
COMPONENT_ADD_INCLUDEDIRS += components/re/re/include

COMPONENT_SRCDIRS += \
components/re/re/src  \
components/re/re/src/main \
components/re/re/src/sys \
components/re/re/src/dns \
components/re/re/src/mbuf \
components/re/re/src/list \
components/re/re/src/mqueue \
components/re/re/src/mem \
components/re/re/src/tcp \
components/re/re/src/msg \
components/re/re/src/sipevent \
components/re/re/src/udp \
components/re/re/src/tmr \
components/re/re/src/fmt \
components/re/re/src/bfcp \
components/re/re/src/json \
components/re/re/src/aes \
components/re/re/src/dbg \
components/re/re/src/md5 \
components/re/re/src/sa \
components/re/re/src/sdp \
components/re/re/src/hash \
components/re/re/src/httpauth \
components/re/re/src/uri \
components/re/re/src/jbuf \
components/re/re/src/stun \
components/re/re/src/srtp \
components/re/re/src/ice \
components/re/re/src/turn \
components/re/re/src/mod \
components/re/re/src/sip \
components/re/re/src/websock \
components/re/re/src/conf \
components/re/re/src/hmac \
components/re/re/src/rtp \
components/re/re/src/natbd \
components/re/re/src/sipreg \
components/re/re/src/base64 \
components/re/re/src/sipsess \
components/re/re/src/odict \
components/re/re/src/lock \
components/re/re/src/http \
components/re/re/src/net \
components/re/re/src/telev \
components/re/re/src/sha \
components/re/re/src/crc32 \


CFLAGS	+= -DHAVE_SELECT -DHAVE_SELECT_H
CFLAGS	+= -DHAVE_INET_NTOP -DHAVE_INET_PTON -DHAVE_PTHREAD -DHAVE_STRERROR_R
CFLAGS	+= -DHAVE_INTTYPES_H -DHAVE_STDBOOL_H -DHAVE_FORK
CFLAGS	+= -DHAVE_PWD_H
CFLAGS  += -DHAVE_SIGNAL -DHAVE_SYS_TIME_H
CFLAGS  += -DHAVE_UNISTD_H -DHAVE_STRINGS_H
CFLAGS	+= -DHAVE_ROUTE_LIST

CFLAGS	+= -Wall
CFLAGS	+= -Wmissing-declarations
CFLAGS	+= -Wmissing-prototypes
CFLAGS	+= -Wbad-function-cast
CFLAGS	+= -Wnested-externs
CFLAGS	+= -Wshadow
CFLAGS	+= -Waggregate-return
CFLAGS  += -DLINUX -g 
CFLAGS  += -Os
CFLAGS  += -Wno-error=char-subscripts
CFLAGS 	+= -Wno-error=implicit-function-declaration

COMPONENT_OBJEXCLUDE += \
					   components/re/re/src/main/openssl.o \
					   components/re/re/src/main/epoll.o \
					   components/re/re/src/dns/res.o \
					   components/re/re/src/mod/dl.o \
					   components/re/re/src/lock/rwlock.o \
					   components/re/re/src/net/ifaddrs.o


############################################################
# baresip
############################################################
COMPONENT_ADD_INCLUDEDIRS += components/baresip/baresip/include

COMPONENT_SRCDIRS += \
components/baresip/ \
components/baresip/baresip/src \
components/baresip/baresip/modules/g711 \
components/baresip/baresip/modules/i2s \
components/baresip/baresip/modules/stdio \
components/baresip/baresip/modules/menu \
.

CFLAGS	+= -DHAVE_SELECT -DHAVE_SELECT_H
CFLAGS	+= -DHAVE_INET_NTOP -DHAVE_INET_PTON -DHAVE_PTHREAD -DHAVE_STRERROR_R
CFLAGS	+= -DHAVE_INTTYPES_H -DHAVE_STDBOOL_H -DHAVE_FORK
CFLAGS	+= -DHAVE_PWD_H
CFLAGS  += -DHAVE_SIGNAL -DHAVE_SYS_TIME_H
CFLAGS  += -DHAVE_UNISTD_H -DHAVE_STRINGS_H
CFLAGS	+= -DHAVE_ROUTE_LIST

CFLAGS	+= -Wall
CFLAGS	+= -Wmissing-declarations
CFLAGS	+= -Wmissing-prototypes
CFLAGS	+= -Wbad-function-cast
CFLAGS	+= -Wnested-externs
CFLAGS	+= -Wshadow
CFLAGS	+= -Waggregate-return
CFLAGS  += -DLINUX -g 
CFLAGS  += -Os
CFLAGS	+= -Wno-char-subscripts

CFLAGS	+= -DSHARE_PATH=\"/usr/share/baresip\"
CFLAGS	+= -Wno-error=address

CFLAGS    += -DSTATIC=1 -DEXTCONFIG=1 -DNODNS
CXXFLAGS  += -DSTATIC=1 -DEXTCONFIG=1 -DNODNS
