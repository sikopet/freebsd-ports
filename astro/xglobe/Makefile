# Created by: Kris Kennaway <kris@FreeBSD.org>
# $FreeBSD$

PORTNAME=	xglobe
PORTVERSION=	0.5
PORTREVISION=	11
CATEGORIES=	astro
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=kris

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Displays a view of the Earth (like xearth) with a rendered photo map

NO_STAGE=	yes
USES=		gmake
USE_QT4=	corelib gui qt3support moc_build
MAKE_ENV=	QT_PREFIX=${QT_PREFIX}

do-install:
	@${MKDIR} ${DATADIR}
	@${INSTALL_PROGRAM} ${WRKSRC}/xglobe ${PREFIX}/bin/
	@${INSTALL_DATA} ${WRKSRC}/map.bmp ${DATADIR}
	@${INSTALL_DATA} ${WRKSRC}/xglobe-markers ${DATADIR}

.include <bsd.port.mk>
