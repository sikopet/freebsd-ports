# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD$

PORTNAME=	edid-decode
PORTVERSION=	0.1.20121128
CATEGORIES=	sysutils
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Decodes binary EDID information from monitors

LICENSE=	MIT

USE_XZ=		yes

PLIST_FILES=	bin/edid-decode

NO_STAGE=	yes
do-build:
	${CC} ${CFLAGS} ${WRKSRC}/${PORTNAME}.c -o ${WRKSRC}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
