# Created by: Dmitry Klimov <lazyklimm@gmail.com>
# $FreeBSD$

PORTNAME=	qtcurve
PORTVERSION=	1.8.16
CATEGORIES=	x11-themes
MASTER_SITES=	http://craigd.wikispaces.com/file/view/
PKGNAMEPREFIX=	gtk2-
PKGNAMESUFFIX=	-theme
DISTNAME=	QtCurve-Gtk2-${PORTVERSION}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	QtCurve GTK2 Theme Engine

USE_BZIP2=	yes
USES=		cmake pkgconfig
USE_GNOME=	gtk20

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${OSVERSION} < 800067
.if ${ARCH} == "amd64"
CFLAGS+=	-fPIC
.endif
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-style-qt_settings.c
.endif

post-extract:
.if ${OSVERSION} < 800067
	${CP} ${FILESDIR}/getline.h ${WRKSRC}/style
	${CP} ${FILESDIR}/getline.c ${WRKSRC}/style
.endif

.include <bsd.port.post.mk>
