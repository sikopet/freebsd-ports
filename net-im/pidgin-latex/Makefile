# Created by: Geoffrey Mainland <mainland@apeiron.net>
# $FreeBSD$

PORTNAME=	latex
PORTVERSION=	1.0
PORTREVISION=	6
CATEGORIES=	net-im
MASTER_SITES=	SF/pidgin-${PORTNAME}/pidgin-${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	pidgin-
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}

MAINTAINER=	mainland@apeiron.net
COMMENT=	Display LaTeX output in your IMs

BUILD_DEPENDS=	${LOCALBASE}/include/pidgin/pidgin.h:${PORTSDIR}/net-im/pidgin
RUN_DEPENDS=	pidgin:${PORTSDIR}/net-im/pidgin \
		convert:${PORTSDIR}/graphics/ImageMagick

WRKSRC=		${WRKDIR}/${PKGNAMEPREFIX}${PORTNAME}

CFLAGS+=	"-fPIC"
USES=		gmake pkgconfig
USE_TEX=	latex
USE_GNOME=	gtk20
USE_BZIP2=	yes

PLIST_FILES=	lib/pidgin/LaTeX.so

NO_STAGE=	yes
do-install:
	${INSTALL_DATA} ${WRKSRC}/LaTeX.so ${PREFIX}/lib/pidgin

.include <bsd.port.mk>
