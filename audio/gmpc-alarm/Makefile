# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gmpc-alarm
PORTVERSION=	11.8.16
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://download.sarine.nl/Programs/gmpc/${PORTVERSION}/

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A Alarm plugin for gmpc

LIB_DEPENDS=	mpd.4:${PORTSDIR}/audio/libmpd
BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/gmpc.pc:${PORTSDIR}/audio/gmpc
RUN_DEPENDS=	gmpc:${PORTSDIR}/audio/gmpc

GNU_CONFIGURE=	yes
USE_GNOME=	glib20 gtk20 intltool
NO_STAGE=	yes
USES=		gmake gettext pathfix pkgconfig

.include <bsd.port.mk>
