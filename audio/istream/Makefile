# Created by: Pav Lucistnik <pav@FreeBSD.org>
# $FreeBSD$

PORTNAME=	istream
PORTVERSION=	0.10
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	http://www.jochen-baier.de/istream/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Internet radio player applet for GNOME Panel

USES=		gmake pkgconfig
NO_STAGE=	yes
USE_GNOME=	gnomepanel libgnomeui
USE_GSTREAMER=	yes
USE_XORG=	xtst
GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}c
CPPFLAGS+=	`pkg-config --cflags libgnomeui-2.0`

post-patch:
	@${REINPLACE_CMD} -e 's|libdir)/bonobo|prefix)/libdata/bonobo|' ${WRKSRC}/src/Makefile.in
	@${REINPLACE_CMD} -e 's|/usr/libexec/istream|${PREFIX}/libexec/istream|' ${WRKSRC}/src/GNOME_istreamApplet.server.in

.include <bsd.port.mk>
