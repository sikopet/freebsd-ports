# Created by: kris@FreeBSD.org
# $FreeBSD$

PORTNAME=	scanssh
PORTVERSION=	2.1
PORTREVISION=	8
CATEGORIES=	security net
MASTER_SITES=	http://www.monkey.org/~provos/

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	Scans networks for open proxies, SSH, web, and SMTP servers

LIB_DEPENDS=	dnet:${PORTSDIR}/net/libdnet \
		event-1.4:${PORTSDIR}/devel/libevent

GNU_CONFIGURE=	YES
PLIST_FILES=	bin/scanssh

MAN1=		scanssh.1

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanssh ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/scanssh.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
