# Created by: Xin LI <delphij@FreeBSD.org>
# $FreeBSD$

PORTNAME=	docproj
PORTVERSION=	0.1.20060303
PORTREVISION=	6
CATEGORIES=	chinese
MASTER_SITES=	# none
DISTFILES=	# none

# Note: Updates from intron@intron.ac should also be
# considered as maintainer updates.

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	Supportive tools for Chinese docproj build

RUN_DEPENDS=	gbklatex:${PORTSDIR}/print/latex-cjk

USES=	iconv

WRKSRC=		${WRKDIR}/src

SRC=		${.CURDIR}/src

NO_STAGE=	yes
do-fetch:
	@${DO_NADA}

pre-patch:
	@${CP} -R ${SRC} ${WRKDIR}

post-patch:
	@${REINPLACE_CMD} -e 's/-liconv/${ICONV_LIB}/' \
		${WRKSRC}/cjktexsty/Makefile

.include <bsd.port.mk>
