# Created by: Pedro Giffuni <giffunip@asme.org>
# $FreeBSD$

PORTNAME=	saoimage
PORTVERSION=	1.35.1
PORTREVISION=	2
CATEGORIES=	astro
MASTER_SITES=	http://tdc-www.harvard.edu/software/saoimage/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Smithsonian Astrophysical Observatory image utility for X

NO_STAGE=	yes
MAKEFILE=	makefile
MAKE_ENV=	OFLAGS="${CFLAGS}"
ALL_TARGET=	${OPSYS}
USE_XORG=	x11

MAN1=		saoimage.1

PLIST_FILES=	bin/saoimage etc/imtoolrc.sample

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/saoimage ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/imtoolrc ${PREFIX}/etc/imtoolrc.sample
	${INSTALL_MAN} ${WRKSRC}/doc/saoimage.man ${PREFIX}/man/man1/saoimage.1

.include <bsd.port.mk>
