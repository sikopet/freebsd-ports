# $FreeBSD$

PORTNAME=	delta
PORTVERSION=	2006.08.03
CATEGORIES=	devel
MASTER_SITES=	LOCAL/eadler/delta

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	Heuristically minimizes interesting files

LICENSE=	BSD

PLIST_FILES=	bin/delta bin/multidelta bin/topformflat

USES=		gmake

do-install:
.for file in delta multidelta
	${INSTALL_SCRIPT} ${WRKSRC}/${file} ${STAGEDIR}${PREFIX}/bin
.endfor
	${INSTALL_PROGRAM} ${WRKSRC}/topformflat ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
