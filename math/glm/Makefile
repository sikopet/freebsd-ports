# Created by: demon@FreeBSD.org
# $FreeBSD$

PORTNAME=	glm
PORTVERSION=	0.9.4.4
CATEGORIES=	math graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ogl-math/${PORTNAME}-${PORTVERSION}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	C++ mathematics library for software based on the OpenGL GLSL

USE_ZIP=	yes
NO_BUILD=	yes

NO_STAGE=	yes
do-install:
		cd ${WRKSRC} && ${FIND} glm -print -depth | ${CPIO} -pdm ${PREFIX}/include/

.include <bsd.port.mk>
