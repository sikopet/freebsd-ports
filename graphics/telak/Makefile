# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD$

PORTNAME=	telak
PORTVERSION=	0.6
PORTREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	http://julien.danjou.info/telak/ \
		CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Tool to draw pictures on your root window

LICENSE=	GPLv2

LIB_DEPENDS=	curl:${PORTSDIR}/ftp/curl \
		gcrypt:${PORTSDIR}/security/libgcrypt

USES=		gmake
USE_EFL=	imlib2

ALL_TARGET=	${PORTNAME}

PLIST_FILES=	bin/telak
MAN1=		telak.1

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MAN1PREFIX}/man/man1

post-install:
	@${CAT} ${PKGMESSAGE}

install-user:
	@${SH} ${FILESDIR}/install-user

.include <bsd.port.mk>
