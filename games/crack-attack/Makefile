# Created by: Pav Lucistnik <pav@FreeBSD.org>
# $FreeBSD$

PORTNAME=	crack-attack
PORTVERSION=	1.1.14
PORTREVISION=	11
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	OpenGL game based on Super Nintendo classic Tetris Attack

USES=		pkgconfig
USE_XORG=	x11 xi xmu sm ice
USE_GL=		glut
USE_GNOME=	gtk20
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include

MAN6=		crack-attack.6

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|#ifndef max|#if 0|' ${WRKSRC}/src/Game.h

.include <bsd.port.mk>
