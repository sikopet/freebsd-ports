# Created by: Eric Crist <ecrist@secure-computing.net>
# $FreeBSD$

PORTNAME=	ssl-admin
DISTVERSION=	1.1.0
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.secure-computing.net/pub/FreeBSD/ports/ssl-admin/ \
		ftp://ftp2.secure-computing.net/pub/FreeBSD/ports/ssl-admin/

MAINTAINER=	ecrist@secure-computing.net
COMMENT=	OpenSSL certificate manager with OpenVPN support

LICENSE=	BSD

RUN_DEPENDS=	zip:${PORTSDIR}/archivers/zip

USES=		perl5
USE_PERL5=	run
MAN1=		ssl-admin.1
MAN5=		ssl-admin.conf.5
SUB_FILES=	pkg-message
MANCOMPRESSED=	no
MAKE_ENV=	ETCDIR=${PREFIX}/etc BINDIR=${PREFIX}/bin \
		MANDIR=${MANPREFIX}/man

NO_STAGE=	yes
post-install:
	${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
