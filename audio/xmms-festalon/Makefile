# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD$

PKGNAMEPREFIX=	xmms-

COMMENT=	XMMS plugin for playing .nsf and .hes audio files

MASTERDIR=	${.CURDIR}/../festalon

BUILD_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms
RUN_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms

USE_GNOME=	glib12
NO_STAGE=	yes
CONFIGURE_ARGS+=	--enable-interface=interface

DESCR=		${.CURDIR}/pkg-descr
PLIST=		${.CURDIR}/pkg-plist

PLIST_FILES=	lib/xmms/Input/libfestalon_xmms.a \
		lib/xmms/Input/libfestalon_xmms.la \
		lib/xmms/Input/libfestalon_xmms.so \
		lib/xmms/Input/libfestalon_xmms.so.0

.include "${MASTERDIR}/Makefile"
