# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD$
#    $MCom: ports/multimedia/gstreamer-plugins-gnonlin/Makefile,v 1.7 2006/07/21 16:39:31 ahze Exp $

PORTNAME=	gstreamer-plugins-gnonlin
PORTVERSION=	0.10.17
CATEGORIES=	multimedia
MASTER_SITES=	http://gstreamer.freedesktop.org/src/gnonlin/
DISTNAME=	gnonlin-${PORTVERSION}

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Gstreamer lib for writing non-linear audio and video

CFLAGS:=	${CFLAGS} -O2 -Wno-format
USES=		pkgconfig
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GSTREAMER=	yes

PLIST_FILES=	lib/gstreamer-0.10/libgnl.la \
		lib/gstreamer-0.10/libgnl.so

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|-Wmissing-include-dirs||g' ${WRKSRC}/configure

.include <bsd.port.mk>
