# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD$

PORTNAME=	lib3ds
PORTVERSION=	1.3.0
PORTREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A library for handling 3DS (3D Studio) files

LICENSE=	LGPL21 # (or later)

USE_ZIP=	yes
USE_GL=		glut
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

MAN1=		3dsdump.1 lib3ds-config.1

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

NO_STAGE=	yes
.include <bsd.port.mk>
