# Created by: Tz-Huan Huang <tzhuan@csie.org>
# $FreeBSD$

PORTNAME=	fann
PORTVERSION=	2.2.0
CATEGORIES=	math science
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}
DISTNAME=	FANN-2.2.0-Source

MAINTAINER=	tzhuan@csie.org
COMMENT=	Free open source neural network library

WRKSRC=		${WRKDIR}/FANN-2.2.0-Source

USES=		cmake
USE_ZIP=	yes
USE_LDCONFIG=	yes

NO_STAGE=	yes
post-patch:
	${REINPLACE_CMD} -e 's|/lib/pkgconfig|/libdata/pkgconfig|g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
