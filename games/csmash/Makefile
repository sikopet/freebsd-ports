# Created by: ijliao
# $FreeBSD$

PORTNAME=	csmash
PORTVERSION=	0.6.6
PORTREVISION=	17
CATEGORIES=	games
MASTER_SITES=	SF/cannonsmash/CannonSmash/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A 3D tabletennis game

USES=		gettext pkgconfig
USE_SDL=	image mixer sdl
USE_GL=		yes
USE_GNOME=	gtk20
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL
LDFLAGS+=	-L${LOCALBASE}/lib

NO_STAGE=	yes
post-patch:
	@${FIND} ${WRKSRC} -name "Makefile.in" | ${XARGS} ${REINPLACE_CMD} -e \
		's|/games/|/|g'
	@${REINPLACE_CMD} -e 's|BallView::||' ${WRKSRC}/BallView.h
	@${REINPLACE_CMD} -e 's|== 3|>= 3|' ${WRKSRC}/matrix

.include <bsd.port.mk>
