# Created by: Roman Neuhauser <neuhauser@sigpipe.cz>
# $FreeBSD$

PORTNAME=	mathomatic
PORTVERSION=	16.0.5
CATEGORIES=	math
MASTER_SITES=	http://www.panix.com/~gesslein/ \
		CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Highly portable, general purpose CAS (Computer Algebra System)

LICENSE=	GPLv2

USES=		gmake
USE_BZIP2=	yes

MAKEFILE=	makefile

PORTDOCS=	*
MAN1=		mathomatic.1

MAKE_ARGS=	READLINE=1

OPTIONS_DEFINE=	DOCS

NO_STAGE=	yes
.include <bsd.port.options.mk>

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mathomatic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mathomatic.1 ${PREFIX}/man/man1
	${MKDIR} ${PREFIX}/share/applications ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icons/mathomatic.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/icons/mathomatic.png ${PREFIX}/share/pixmaps
.if ${PORT_OPTIONS:MDOCS}
.for d in m4 tests
	${MKDIR} ${DOCSDIR}/${d}
	${INSTALL_DATA} ${WRKSRC}/${d}/* ${DOCSDIR}/${d}
.endfor
	${MKDIR} ${DOCSDIR}/html
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCSDIR}/html
.for f in AUTHORS README.txt changes.txt
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}/
.endfor
.endif

.include <bsd.port.mk>
