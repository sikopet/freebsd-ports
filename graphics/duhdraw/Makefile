# Created by: Kyle Martin <mkm@ieee.org>
# $FreeBSD$

PORTNAME=	duhdraw
PORTVERSION=	2.8.13
CATEGORIES=	graphics
MASTER_SITES=	http://www.cs.helsinki.fi/u/penberg/duhdraw/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An ANSI graphic drawing program

MAKE_ARGS=	CC="${CC} ${CFLAGS}"

PLIST_FILES=	bin/ansi bin/ansitoc bin/duhdraw

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e '/<malloc.h>/d' ${WRKSRC}/duhdraw.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ansi ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ansitoc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/duhdraw ${PREFIX}/bin

.include <bsd.port.mk>
