# Created by: Alexey Dokuchaev <danfe@regency.nsu.ru>
# $FreeBSD$

PORTNAME=	wmmemfree
PORTVERSION=	0.7
PORTREVISION=	3
CATEGORIES=	sysutils windowmaker
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/xutils

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Memory and swap monitoring dockapp

USE_BZIP2=	yes
USE_XORG=	xpm

MAN1=		${PORTNAME}.1
PLIST_FILES=	bin/wmmemfree

NO_STAGE=	yes
post-patch:
	@${CP} ${FILESDIR}/mem_freebsd.* ${WRKSRC}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	@${CHMOD} g+s ${PREFIX}/bin/${PORTNAME}
	@${CHOWN} root:kmem ${PREFIX}/bin/${PORTNAME}
	@${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
