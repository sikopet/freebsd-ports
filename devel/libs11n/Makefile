# Created by: aaron@FreeBSD.org
# $FreeBSD$

PORTNAME=	libs11n
PORTVERSION=	1.2.10
CATEGORIES=	devel
MASTER_SITES=	SF/s11n/s11n/${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-nobuildfiles

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A C++ library for easily serializing a wide variety of objects

WRKSRC=		${WRKDIR}/${DISTNAME}/src
USE_ZIP=	yes
USE_LDCONFIG=	yes

NO_STAGE=	yes
post-extract:
	@${CP} ${PATCHDIR}/Makefile.bsd ${WRKSRC}/Makefile

pre-install:
	${MKDIR} ${PREFIX}/include/s11n.net
	${MKDIR} ${PREFIX}/include/s11n.net/s11n
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/io
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/nodeutil
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/plugin
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/proxy
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/proxy/pod
	${MKDIR} ${PREFIX}/include/s11n.net/s11n/proxy/std

.include <bsd.port.mk>
