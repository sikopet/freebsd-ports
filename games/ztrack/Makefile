# Created by: Andrey Zakhvatov <andy@icc.surw.chel.su>
# $FreeBSD$

PORTNAME=	ztrack
PORTVERSION=	1.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/arcade

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple ncurses based pseudo-3D driving game

WRKSRC=		${WRKDIR}/${PORTNAME}

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_RANDOM"
ALL_TARGET=	ztrack
MAN6=		ztrack.6
PLIST_FILES=	bin/ztrack

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ztrack ${PREFIX}/bin/ztrack
	${INSTALL_MAN} ${WRKSRC}/ztrack.6 ${MANPREFIX}/man/man6

.include <bsd.port.mk>
