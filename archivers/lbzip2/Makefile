# Created by: Gabor Kovesdan <gabor@FreeBSD.org>
# $FreeBSD$

PORTNAME=	lbzip2
PORTVERSION=	0.23
CATEGORIES=	archivers
MASTER_SITES=	http://lacos.web.elte.hu/pub/lbzip2/

MAINTAINER=	gabor@FreeBSD.org
COMMENT=	Multi-threaded bzip2/bunzip2 filter

WRKSRC=		${WRKDIR}/${PORTNAME}
PLIST_FILES=	bin/lbzip2

NO_STAGE=	yes
MAN1=		lbzip2.1

PORTDOCS=	ChangeLog README

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lbzip2 ${PREFIX}/bin/lbzip2
	${INSTALL_MAN} ${WRKSRC}/lbzip2.1 ${MAN1PREFIX}/man/man1

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
