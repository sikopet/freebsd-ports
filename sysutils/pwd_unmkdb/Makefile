# Created by: Matthew Fuller <fullermd@over-yonder.net>
# $FreeBSD$

PORTNAME=	pwd_unmkdb
PORTVERSION=	1.3.1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.over-yonder.net/~fullermd/projects/pwd_unmkdb/ \
		http://distfiles.over-yonder.net/pwd_unmkdb/

MAINTAINER=	fullermd@over-yonder.net
COMMENT=	Recover a master.passwd from the hashed database

MAN8=		pwd_unmkdb.8
PLIST_FILES=	sbin/pwd_unmkdb

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pwd_unmkdb ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pwd_unmkdb.8 ${MAN8PREFIX}/man/man8

.include <bsd.port.mk>
