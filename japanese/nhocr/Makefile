# Created by: Hiroto Kagotani <hiroto.kagotani@gmail.com>
# $FreeBSD$

PORTNAME=	nhocr
PORTVERSION=	0.16
CATEGORIES=	japanese graphics
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	hiroto.kagotani@gmail.com
COMMENT=	OCR engine for Japanese language

BUILD_DEPENDS=	${LOCALBASE}/lib/libsip.a:${PORTSDIR}/graphics/O2-tools

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-O2tools=${LOCALBASE} --datadir=${DATADIR}

NO_STAGE=	yes
post-install:
	${MKDIR} ${PREFIX}/share/ocropus/scripts
	${INSTALL_DATA} ${WRKSRC}/ocropus/rec-nhocr-0.3.lua ${PREFIX}/share/ocropus/scripts/rec-nhocr.lua
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
