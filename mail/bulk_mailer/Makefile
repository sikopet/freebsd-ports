# Created by: dlowe
# $FreeBSD$

PORTNAME=	bulk_mailer
PORTVERSION=	1.13
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.cs.utk.edu/pub/moore/bulk_mailer/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	mat/

MAINTAINER=	mat@FreeBSD.org
COMMENT=	Speeds delivery to mailing lists by sorting & batching addresses

GNU_CONFIGURE=	YES
OPTIONS_DEFINE=	DOCS
LICENSE=	GPLv3

ALL_TARGET=	bulk_mailer

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bulk_mailer ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bulk_mailer.1 ${STAGEDIR}${PREFIX}/man/man1
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/bulk_mailer.README ${STAGEDIR}${DOCSDIR}/README
	${INSTALL_DATA} ${WRKSRC}/bulk_mailer.ps ${STAGEDIR}${DOCSDIR}
.endif

.include <bsd.port.mk>
