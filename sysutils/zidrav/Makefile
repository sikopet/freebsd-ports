# Created by: Cosmin Stroe <cstroe1@uic.edu>
# $FreeBSD$

PORTNAME=	zidrav
PORTVERSION=	1.2.0
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}4unix/${PORTVERSION}
DISTNAME=	zidrav4unix-${PORTVERSION}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	A file corruption detection and repair program

LICENSE=	GPLv2

NO_STAGE=	yes

ALL_TARGET=	zidrav
MAN1=		zidrav.1
PLIST_FILES=	bin/zidrav

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zidrav ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zidrav.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
