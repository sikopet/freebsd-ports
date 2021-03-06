# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD$

PORTNAME=	python-registry
PORTVERSION=	0.2.7
CATEGORIES=	security devel python
MASTER_SITES=	GH \
		LOCAL/antoine
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Read access to Windows Registry files

LICENSE=	AL2

USE_GITHUB=	yes
GH_ACCOUNT=	williballenthin
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	ca12109

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	yes

OPTIONS_DEFINE=	DOCS EXAMPLES

PORTDOCS=	*
PORTEXAMPLES=	*

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-patch:
	${REINPLACE_CMD} 's|0.2.6|${PORTVERSION}|' ${WRKSRC}/Registry/__init__.py
	${REINPLACE_CMD} '1s|.*|#!${PYTHON_CMD}|' ${WRKSRC}/samples/*.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/documentation/* ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/*.py ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
