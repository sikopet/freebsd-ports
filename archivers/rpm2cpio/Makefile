# Created by: Juergen Lock <nox@jelal.kn-bremen.de>
# $FreeBSD$

PORTNAME=	rpm2cpio
PORTVERSION=	1.3
PORTREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	nox@FreeBSD.org
COMMENT=	Convert .rpm files for extraction with /usr/bin/cpio, needs just perl

NO_WRKSUBDIR=	yes

USES=		perl5
NO_STAGE=	yes
NO_BUILD=	yes
REINPLACE_ARGS=

PLIST_FILES=	bin/rpm2cpio.pl

.include <bsd.port.pre.mk>

.if ( (${OSVERSION} >= 900000 && ${OSVERSION} < 900012) || ${OSVERSION} < 800505 )
RUN_DEPENDS+=	${LOCALBASE}/bin/xz:${PORTSDIR}/archivers/xz
.endif

do-fetch:
	@${DO_NADA}

do-extract:
	@${MKDIR} ${WRKSRC}
	@${REINPLACE_CMD} -e 's|^#!/usr/bin/perl|#!${PERL}|' ${FILESDIR}/${PORTNAME} >${WRKDIR}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME} ${PREFIX}/bin/${PORTNAME}.pl

.include <bsd.port.post.mk>
