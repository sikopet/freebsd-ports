# Created by: Serge Gagnon <serge.gagnon.1@ulaval.ca>
# $FreeBSD$

PORTNAME=	cvsdadm
PORTVERSION=	0.3.2
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	ftp://quenix2.dyndns.org/FreeBSD/ports/distfiles/ \
    		${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool for CVSd pserver user administration

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		shebangfix perl5
NO_BUILD=	yes
USE_PERL5=	run
POD2TEXT?=	pod2text
PORTDOCS=	cvsdadm.README

SHEBANG_FILES=	cvsdadm

PLIST_FILES=	bin/cvsdadm

MAN1=	cvsdadm.1

NO_STAGE=	yes
.include <bsd.port.options.mk>

do-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${POD2TEXT} ${WRKSRC}/cvsdadm > ${WRKSRC}/${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif
	${INSTALL_SCRIPT} ${WRKSRC}/cvsdadm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cvsdadm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
