# Created by: David O'Brien <obrien@cs.ucdavis.edu>
# $FreeBSD$

PORTNAME=	mixal
PORTVERSION=	1.11
CATEGORIES=	lang
MASTER_SITES=	http://www.catb.org/~esr/mixal/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Assembler and interpreter for Donald Knuth's mythical MIX computer

USE_GMAKE=	yes
MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=	${PORTNAME}

MAN1=		mixal.1

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mixal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mixal.1 ${MANPREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for F in MIX.DOC NOTES README opcodes *.mix
	${INSTALL_DATA} ${WRKSRC}/${F} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
