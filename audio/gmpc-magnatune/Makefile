# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gmpc-magnatune
PORTVERSION=	11.8.16
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://download.sarine.nl/Programs/gmpc/${PORTVERSION}/

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	The Magnatune plugin let's you preview music from Magnatune

LIB_DEPENDS=	mpd.4:${PORTSDIR}/audio/libmpd \
		sqlite3:${PORTSDIR}/databases/sqlite3
BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/gmpc.pc:${PORTSDIR}/audio/gmpc
RUN_DEPENDS=	gmpc:${PORTSDIR}/audio/gmpc

GNU_CONFIGURE=	yes
USE_GNOME=	intltool glib20 gtk20 libglade2
NO_STAGE=	yes
USES=		gettext gmake pkgconfig

.include <bsd.port.mk>
