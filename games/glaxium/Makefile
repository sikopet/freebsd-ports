# Created by: Igor Pokrovsky <ip@doom.homeunix.org>
# $FreeBSD$

PORTNAME=	glaxium
PORTVERSION=	0.5
PORTREVISION=	12
CATEGORIES=	games
MASTER_SITES=	http://xhosxe.free.fr/glaxium/
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	OpenGL based space-ship "shoot-em-up" game

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png

USE_SDL=	sdl mixer
USE_GL=		glut
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
ALL_TARGET=	${PORTNAME}

MAN6=		glaxium.6

USE_DOS2UNIX=	variables.cpp scene.cpp

DESKTOP_ENTRIES=	"Glaxium" \
			"Space-ship \"shoot-em-up\" game" \
			"${DATADIR}/textures/myship.png" \
			"glaxium" \
			"Game;ArcadeGame;" \
			false

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|/usr/X11R6|${LOCALBASE}|g; \
		 s|/games/glaxium|/glaxium|g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|gcc -g -o|$$(CC) -o|g ; \
		 s|/games/glaxium|/glaxium|g' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e 's|Scratcher:: Scratcher|Scratcher|g' \
		${WRKSRC}/scratcher.hpp
	@${REINPLACE_CMD} -e 's|TankFire::TankFire|TankFire|g' \
		${WRKSRC}/tank.hpp

.include <bsd.port.mk>
