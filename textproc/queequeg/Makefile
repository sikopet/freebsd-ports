# Created by: Kimura Fuyuki <fuyuki@nigredo.org>
# $FreeBSD$

PORTNAME=	queequeg
PORTVERSION=	0.91
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A tiny English grammar checker

BUILD_DEPENDS=	wn:${PORTSDIR}/textproc/wordnet \
		${PYTHON_SITELIBDIR}/cdbmodule.so:${PORTSDIR}/databases/py-cdb
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/cdbmodule.so:${PORTSDIR}/databases/py-cdb

USE_PYTHON=	yes
MAKE_ARGS=	dict WORDNETDICT="${LOCALBASE}/share/WordNet"

.if !defined(NOPORTDOCS)
PORTDOCS=	address.png index-e.html index.html
.endif

NO_STAGE=	yes
do-install:
	${MKDIR} ${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/qq ${DATADIR}
	${LN} -shf ${DATADIR}/qq ${PREFIX}/bin/qq
	${INSTALL_DATA} ${WRKSRC}/*.py ${WRKSRC}/dict.cdb ${DATADIR}
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/htdocs; ${INSTALL_DATA} * ${DOCSDIR}
.endif

.include <bsd.port.mk>
