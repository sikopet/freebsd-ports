# Created by: eivind
# $FreeBSD$

PORTNAME=	etcmerge
PORTVERSION=	0.4
PORTREVISION=	0
CATEGORIES=	sysutils
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Automatic 3-way merge of /etc updates

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

SRC=		${.CURDIR}/src

MAN8=		${PORTNAME}.8
PLIST_FILES=	sbin/etcmerge

NO_STAGE=	yes
do-install:
	${INSTALL_SCRIPT} ${SRC}/${PORTNAME}.sh ${PREFIX}/sbin/${PORTNAME}
	${INSTALL_MAN} ${SRC}/${PORTNAME}.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
