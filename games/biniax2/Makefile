# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD$

PORTNAME=	biniax2
PORTVERSION=	1.30
PORTREVISION=	6
CATEGORIES=	games
MASTER_SITES=	http://mordred.dir.bg/biniax/ \
		http://mirror.amdmi3.ru/distfiles/
DISTNAME=	${PORTNAME}-${PORTVERSION}-fullsrc

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Original logic game with arcade and tactics modes

USE_SDL=	sdl mixer image
USE_DOS2UNIX=	yes
NO_WRKSUBDIR=	yes

NO_STAGE=	yes
post-patch:
	@${RM} -f ${WRKSRC}/data/Thumbs.db
	@${REINPLACE_CMD} -e 's|data/|${DATADIR}/|g' \
		${WRKSRC}/desktop/gfx.c ${WRKSRC}/desktop/snd.c

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} biniax.c hof.c desktop/cfg.c \
		desktop/gfx.c desktop/snd.c desktop/inp.c desktop/sys.c \
		-I. -Idesktop `${SDL_CONFIG} --cflags --libs` \
		-lSDL_image -lSDL_mixer -o ${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${MKDIR} ${DATADIR}
	cd ${WRKSRC}/data && ${COPYTREE_SHARE} . ${DATADIR}

.include <bsd.port.mk>
