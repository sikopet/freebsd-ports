# $FreeBSD$

PORTNAME=	hunspell
PORTVERSION=	20120501
CATEGORIES=	russian textproc
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	ru_RU_UTF-8_${PORTVERSION}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Russian hunspell dictionaries

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
PROJECTHOST=	hunspell-ru

PLIST_FILES=	%%DATADIR%%/ru_RU.aff \
		%%DATADIR%%/ru_RU.dic
PLIST_DIRSTRY=	%%DATADIR%%

NO_STAGE=	yes
do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/ru_RU.aff ${WRKSRC}/ru_RU.dic ${DATADIR}/

.include <bsd.port.mk>
