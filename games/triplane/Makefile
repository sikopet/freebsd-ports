# Created by: Ganael Laplanche <ganael.laplanche@martymac.org>
# $FreeBSD$

PORTNAME=	triplane
PORTVERSION=	1.08.r20130224
CATEGORIES=	games
MASTER_SITES=	http://contribs.martymac.org/FreeBSD-ports/distfiles/ \
		SF/${PORTNAME}
DISTNAME=	${PORTNAME}-classic-${PORTVERSION}

MAINTAINER=	martymac@FreeBSD.org
COMMENT=	Port of the original Triplane Turmoil game

LICENSE=	GPLv3

USES=		gmake
USE_SDL=	sdl mixer
WRKSRC=		${WRKDIR}/${DISTNAME}

CFLAGS+=	-DTRIPLANE_DATA=\\\"${DATADIR}\\\"
MAKE_ENV=	DATADIR="${DATADIR}"

MAN6=		triplane.6

# ALL_TARGET="depend all" would not work in -jX case due to races
NO_STAGE=	yes
pre-build:
	${GMAKE} -C ${BUILD_WRKSRC} depend

.include <bsd.port.mk>
