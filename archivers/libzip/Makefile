# Created by: Alexander Zhuravlev <zaa@zaa.pp.ru>
# $FreeBSD$

PORTNAME=	libzip
PORTVERSION=	0.11.1
CATEGORIES=	archivers devel
MASTER_SITES=	http://www.nih.at/libzip/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	C library for reading, creating, and modifying ZIP archives

NO_STAGE=	yes
USE_XZ=		yes
GNU_CONFIGURE=	yes
MAKE_ENV=	LC_ALL="C"
USE_AUTOTOOLS=	libtool
USES=		pathfix
USE_LDCONFIG=	yes

.include <${.CURDIR}/Makefile.man>
.include <bsd.port.mk>
