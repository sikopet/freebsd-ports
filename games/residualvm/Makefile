# Created by: Alexander Yerenkow <yerenkow@gmail.com>
# $FreeBSD$

PORTNAME=	residualvm
PORTVERSION=	0.1.1
#PORTREVISION=	0
#PORTEPOCH=	0
CATEGORIES=	games

MAINTAINER=	yerenkow@gmail.com
COMMENT=	ResidualVM allows you to indulge with classic games like Grim Fandango

USE_GITHUB=	YES
GH_ACCOUNT=	residualvm
GH_PROJECT=	residualvm
GH_TAGNAME=	0.1.1
GH_COMMIT=	340bbe3

USE_SDL=	sdl
HAS_CONFIGURE=	yes
USE_GMAKE=	yes

MAN6=		residualvm.6
NO_MANCOMPRESS=	yes

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|{datarootdir}/man|{prefix}/man|' ${WRKSRC}/configure

.include <bsd.port.mk>
