# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD$

PORTNAME=	pytsk
DISTVERSION=	2013-09-10
PORTREVISION=	1
CATEGORIES=	sysutils security devel python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
EXTRACT_SUFX=	.tgz

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Python bindings for the Sleuthkit

LICENSE=	AL2

LIB_DEPENDS=	libtsk.so:${PORTSDIR}/sysutils/sleuthkit

WRKSRC=		${WRKDIR}/${PORTNAME}

USE_PYTHON=	-2.7
USE_PYDISTUTILS=yes
PYDISTUTILS_PKGNAME=pytsk3
PYDISTUTILS_PKGVERSION=0.1

post-patch:
	${REINPLACE_CMD} -e '/socket\.h/ { h; s|socket|types|; G; }' ${WRKSRC}/misc.h
	${REINPLACE_CMD} -e 's|/usr/local/include/tsk/|${LOCALBASE}/include/tsk/|' \
		-e "s|LIBRARY_DIRS = \[\]|LIBRARY_DIRS = ['${LOCALBASE}/lib']|" \
		-e "s|= \[CONFIG\['TSK_HEADERS_LOCATION'\]\]|= ['${LOCALBASE}/include']|" \
		${WRKSRC}/setup.py

DOCSDIR=	${PREFIX}/share/doc/py-${PORTNAME}
PORTDOCS=	README

EXAMPLESDIR=	${PREFIX}/share/examples/py-${PORTNAME}
PORTEXAMPLES=	*

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/pytsk3.so

OPTIONS_DEFINE=	DOCS EXAMPLES

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.py ${STAGEDIR}${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
