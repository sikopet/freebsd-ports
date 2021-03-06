# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD$

PORTNAME=	magic
PORTVERSION=	0.7.3
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	SF/ocaml-${PORTNAME}/ocaml-${PORTNAME}/0.7
PKGNAMEPREFIX=	ocaml-
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	An OCaml binding for libmagic(3)

USE_OCAML=		yes
USE_OCAML_FINDLIB=	yes
USE_OCAML_LDCONFIG=	yes

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.ifndef(NOPORTDOCS)
ALL_TARGET+=	doc
PORTDOCS=	*
DOCSDIR=	${OCAML_DOCSDIR}/${PORTNAME}
.endif

.ifndef(NOPORTEXAMPLES)
ALL_TARGET+=	examples
PORTEXAMPLES=	*
EXAMPLESDIR=	${OCAML_EXAMPLESDIR}/${PORTNAME}
.endif

# This really is overzealous but I work this way
.if !exists(/usr/lib/libmagic.so)
LIB_DEPENDS+=	magic:${PORTSDIR}/sysutils/file
.endif

NO_STAGE=	yes
.include <bsd.port.pre.mk>

post-install:
.ifndef(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${DOCSDIR}
.endif
.ifndef(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
