# Created by: Andrew Wingorodov <mail@andr.ru>
# $FreeBSD$

PORTNAME=	pstreams
PORTVERSION=	0.6.0
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/Release%200.6.x

MAINTAINER=	eg@fbsd.lt
COMMENT=	C++ utility for simple IOStream-based IPC

USE_GMAKE=	yes
MAKE_ENV+=	INSTALL_PREFIX=${PREFIX}
NO_BUILD=	yes

PLIST_FILES=	include/pstreams/pstream.h
PLIST_DIRS=	include/pstreams

NO_STAGE=	yes
.include <bsd.port.mk>
