# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD$

PORTNAME=	mptd
PORTVERSION=	0.01
CATEGORIES=	sysutils
MASTER_SITES=	https://www.glenbarber.us/ports/${CATEGORIES}/${PORTNAME}/

MAINTAINER=	feld@FreeBSD.org
COMMENT=	Monitoring daemon for mpt RAID controllers

USE_RC_SUBR=	mptd
PLIST_FILES+=	sbin/mptd

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mptd ${PREFIX}/sbin/mptd

.include <bsd.port.mk>
