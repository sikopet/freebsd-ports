# Created by: Cy Schubert <cy@FreeBSD.org>
# $FreeBSD$

PORTNAME=	xascii
PORTVERSION=	1.0
CATEGORIES=	x11
MASTER_SITES=	http://komquats.com/distfiles/ \
		http://people.freebsd.org/~cy/distfiles/

WRKSRC=		${WRKDIR}

MAINTAINER=	cy@FreeBSD.org
COMMENT=	Display an ASCII table in decimal, octal, and hexadecimal.

MAKE_ARGS+=	PREFIX=${PREFIX}
USES=		imake
USE_XORG=	x11 xt xaw
MAN1=		xascii.1
PLIST_FILES=	bin/xascii

NO_STAGE=	yes
.include <bsd.port.mk>
