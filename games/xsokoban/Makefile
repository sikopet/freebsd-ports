# Created by: Yukihiro Nakai <Nakai@Mlab.t.u-tokyo.ac.jp>
# $FreeBSD$

PORTNAME=	xsokoban
PORTVERSION=	3.3c
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	http://www.cs.cornell.edu/andru/release/ \
		ftp://ftp.pmg.lcs.mit.edu/pub/xsokoban/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Puzzle of pushing objects to the goals

USES=		imake
USE_XORG=	xpm
WRKSRC=		${WRKDIR}/xsokoban
ALL_TARGET=	xsokoban
MAN1=		xsokoban.1

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/config.h

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/xsokoban/scores \
		${PREFIX}/lib/X11/xsokoban/bitmaps/defaults \
		${PREFIX}/lib/X11/xsokoban/saves \
		${PREFIX}/lib/X11/xsokoban/screens
	@${CHMOD} 777 ${PREFIX}/lib/X11/xsokoban/scores
	@${CHMOD} 775 ${PREFIX}/lib/X11/xsokoban/saves
	@${INSTALL_DATA} ${WRKSRC}/screens/* ${PREFIX}/lib/X11/xsokoban/screens
	@${INSTALL_DATA} ${WRKSRC}/bitmaps/defaults/* \
		${PREFIX}/lib/X11/xsokoban/bitmaps/defaults
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
