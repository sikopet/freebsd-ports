# Created by: ijliao
# $FreeBSD$

PORTNAME=	csstidy
PORTVERSION=	1.2
CATEGORIES=	www
MASTER_SITES=	SF/${PORTNAME}/CSSTidy%20%28C%2B%2B%2C%20stable%29/${PORTVERSION}
DISTNAME=	${PORTNAME}-source-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An opensource CSS parser and optimiser

USE_ZIP=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	bin/csstidy

NO_STAGE=	yes
do-build:
	@cd ${WRKSRC} && ${CXX} ${CXXFLAGS} *.cpp -o ${PORTNAME}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
