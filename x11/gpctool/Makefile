# Created by: Mikhail Teterin
# $FreeBSD$

PORTNAME=	gpctool
PORTVERSION=	1.0.1
PORTREVISION=	3
CATEGORIES=	x11 math graphics
MASTER_SITES=	ftp://ftp.cs.man.ac.uk/pub/toby/gpc/
DISTNAME=	gpct${PORTVERSION:S/.//g}

MAINTAINER=	mi@aldan.algebra.com
COMMENT=	Evaluation tool for the Generic Polygon Clipper library

LIB_DEPENDS=	gpc:${PORTSDIR}/devel/libgpc	\
		formsGL.2:${PORTSDIR}/x11-toolkits/xforms

USE_ZIP=	yes
USE_GL=		yes
PLIST_FILES=	bin/gpctool
USE_LDCONFIG=	yes
NO_CDROM=	Can't be used for profit without permission

MAKEFILE=	${FILESDIR}/BSDmakefile

EXTRACT_BEFORE_ARGS=-qoa
EXTRACT_AFTER_ARGS=-d ${WRKDIR} -x ${DISTNAME}/gpc.? ${DISTNAME}/gl.c

NO_STAGE=	yes
post-patch:
	${REINPLACE_CMD} -e 's|FALSE|false|g' \
	   ${WRKSRC}/callbacks.c ${WRKSRC}/graphics.c

.include <bsd.port.mk>
