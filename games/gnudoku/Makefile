# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD$

PORTNAME=	GNUDoku
PORTVERSION=	0.93
PORTREVISION=	6
CATEGORIES=	games
MASTER_SITES=	http://offload2.icculus.org:9090/~jcspray/GNUDoku/ \
		http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	A free program for creating and solving Su Doku puzzles

LIB_DEPENDS=	gtkmm-2.4:${PORTSDIR}/x11-toolkits/gtkmm24

USES=		gmake pkgconfig
MAKE_ENV=	CXXLAGS="${CXXFLAGS}"

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|PREFIX=|PREFIX?=|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|CXXFLAGS=|CXXFLAGS+=|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
