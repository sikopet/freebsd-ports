# Created by: Matt Harris <mattdharris@users.sourceforge.net>
# $FreeBSD$

PORTNAME=	libmsocket
PORTVERSION=	0.4
PORTREVISION=	1
CATEGORIES=	devel net
MASTER_SITES=	SF/kageki/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	rodrigo@bebik.net
COMMENT=	A socket abstraction library for C programmers

LIB_DEPENDS=	event:${PORTSDIR}/devel/libevent

USE_BZIP2=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-throttling \
		--with-libevent=${LOCALBASE}

PLIST_FILES=	lib/libmsocket.so \
		lib/libmsocket.so.0.1 \
		lib/libmsocket.a \
		include/msocket.h \
		include/msocketutils.h

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${ARCH} != "i386"
CFLAGS+=	-fPIC -DPIC
.endif

.if defined(WITH_DEBUG)
CONFIGURE_ARGS+=	--enable-debug
.endif

post-patch:
	${REINPLACE_CMD} 's,  withval=$$with_libevent; cf_enable_libevent=$$enableval,   withval=$$with_libevent; cf_enable_libevent=$$with_libevent,' \
		${WRKSRC}/configure

.include <bsd.port.post.mk>
