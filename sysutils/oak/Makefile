# Created by: Dmitry Sivachenko <demon@FreeBSD.org>
# $FreeBSD$

PORTNAME=	oak
PORTVERSION=	1.5.0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.ktools.org/dist/oak/

MAINTAINER=	demon@FreeBSD.org
COMMENT=	System Log Reporting Tool

USE_RC_SUBR=	oak

GNU_CONFIGURE=	yes
ALL_TARGET=	oak
PLIST_FILES=	bin/oak

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/oak ${PREFIX}/bin

.include <bsd.port.mk>
