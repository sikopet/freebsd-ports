# Created by: NECDET COKYAZICI <cokyazici@yahoo.co.uk>
# $FreeBSD$

PORTNAME=	libnaji
PORTVERSION=	0.6.4
CATEGORIES=	devel
MASTER_SITES=	SF/najitool/${PORTNAME}/${PORTVERSION}

MAINTAINER=	rodrigo@bebik.net
COMMENT=	Library that generates, converts, and filters files

MAKE_ARGS=	cc=${CC}

DISTVERSIONSUFFIX=	.src

NO_STAGE=	yes
do-install:
	${INSTALL_DATA} ${WRKSRC}/libnaji.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libnaji.a ${PREFIX}/lib

.include <bsd.port.mk>
