# Created by: Martin Tournoij <carpetsmoker@xs4all.nl>
# $FreeBSD$

PORTNAME=	avanor
PORTVERSION=	0.5.8
CATEGORIES=	games
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Rogue-like game with easy ADOM-like user interface

USE_BZIP2=	yes
USE_GMAKE=	yes
MAKE_ARGS+=	VERSION=${PORTVERSION} DATA_DIR=${DATADIR}/
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e "s|g++|${CXX}|; \
		s|CFLAGS =|CFLAGS+=|;" \
			${WRKSRC}/Makefile

	@${REINPLACE_CMD} -e "s|DATA_DIR|\"~/.avanor/\"|" \
		${WRKSRC}/helpers/hiscore.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/avanor ${PREFIX}/bin
	${MKDIR} ${DATADIR}/manual
	${INSTALL_DATA} ${WRKSRC}/manual/* ${DATADIR}/manual/

.include <bsd.port.mk>
