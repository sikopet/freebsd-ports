# Created by: Zhihao Yuan <lichray@gmail.com>
# $FreeBSD$

PORTNAME=	pure-sockets
PORTVERSION=	0.6
CATEGORIES=	net

MAINTAINER=	lichray@gmail.com
COMMENT=	Pure language interface to the Berkeley socket functions

USE_PURE=	yes

PLIST_FILES=	lib/pure/sockets.pure \
		lib/pure/sockets.so

NO_STAGE=	yes
.include "${.CURDIR}/../../lang/pure/bsd.pure.mk"
.include <bsd.port.mk>
