# Created by: Xin LI <delphij@FreeBSD.org>
# $FreeBSD$

PORTNAME=	madedit
PORTVERSION=	0.2.9
PORTREVISION=	8
CATEGORIES=	editors
MASTER_SITES=	SF/${PORTNAME}/MadEdit/MadEdit-${PORTVERSION}

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	An open-source and cross-platform text/hex editor

USES=		gettext pkgconfig
USE_WX=		2.6+
WANT_UNICODE=	yes
USE_DOS2UNIX=	yes

LIB_DEPENDS+=	boost_regex:${PORTSDIR}/devel/boost-libs

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-wx-config=${WX_CONFIG}
CONFIGURE_ENV+=	PKG_CONFIG="${PKG_CONFIG}" glib_gtk2_CFLAGS="${glib_gtk2_CFLAGS}" glib_gtk2_LIBS="${glib_gtk2_LIBS}"
CXXFLAGS+=	${glib_gtk2_CFLAGS}

PKG_CONFIG?=	${LOCALBASE}/bin/pkg-config
glib_gtk2_CFLAGS=`${PKG_CONFIG} --cflags gtk+-2.0`
glib_gtk2_LIBS=	`${PKG_CONFIG} --libs gtk+-2.0`

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
BROKEN=		Does not compile
.endif

.include <bsd.port.post.mk>
