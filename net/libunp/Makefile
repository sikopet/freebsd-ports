# Created by: james@targetnet.com
# $FreeBSD$

PORTNAME=	libunp
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	net ipv6
MASTER_SITES=	http://www.kohala.com/start/unpv12e/
DISTNAME=	unpv12e

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The networking library used in UNIX Network Programming Volume 1 2e

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

NO_STAGE=	yes
pre-patch:
	@ ${CP} ${WRKSRC}/lib/wrapsock.c ${WRKSRC}/lib/wrapsock_r.c

post-configure:
	@ ${MKDIR} ${WRKSRC}/unp
	@ ${LN} -s ${WRKSRC}/config.h ${WRKSRC}/unp/config.h
	@ ${LN} -s ${WRKSRC}/lib/addrinfo.h ${WRKSRC}/unp/addrinfo.h

do-install:
	${INSTALL_DATA} ${WRKSRC}/libunp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/libunp_r.a ${PREFIX}/lib
	${MKDIR} ${PREFIX}/include/unp
	${INSTALL_DATA} ${WRKSRC}/lib/unp.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/lib/addrinfo.h ${PREFIX}/include/unp
	${INSTALL_DATA} ${WRKSRC}/config.h ${PREFIX}/include/unp

.include <bsd.port.mk>
