# Created by: Lars Koeller <Lars.Koeller@Uni-Bielefeld.DE>
# $FreeBSD$

PORTNAME=	xrolo
PORTVERSION=	2.6
PORTREVISION=	2
CATEGORIES=	deskutils
MASTER_SITES=	ftp://ftp.uni-potsdam.de/pub/X11/open-look/ \
		ftp://ftp.uni-bielefeld.de/pub/systems/FreeBSD/lkoeller/
DISTNAME=	${PORTNAME}.v2p6
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Electronic Rolodex

LIB_DEPENDS=	xview.3:${PORTSDIR}/x11-toolkits/xview

WRKSRC=		${WRKDIR}/xrolo

USES=		imake
USE_XORG=	x11 xext
MAN1=		xrolo.1
PLIST_FILES=	bin/xrolo

NO_STAGE=	yes
.include <bsd.port.mk>
