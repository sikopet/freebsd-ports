# Created by: trasz <trasz@pin.if.uz.zgora.pl>
# $FreeBSD$

PORTNAME=	mudmagic
PORTVERSION=	1.9
PORTREVISION=	12
CATEGORIES=	games
MASTER_SITES=	http://www.mudmagic.com/mud-client/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A GTK+ based MUD client

LIB_DEPENDS=	curl:${PORTSDIR}/ftp/curl \
		pcre.3:${PORTSDIR}/devel/pcre \
		png15:${PORTSDIR}/graphics/png \
		expat:${PORTSDIR}/textproc/expat2 \
		sqlite3.8:${PORTSDIR}/databases/sqlite3

USES=		gmake pathfix pkgconfig
USE_GNOME=	gtk20 libglade2 libxml2
GNU_CONFIGURE=	yes
USE_PYTHON=	yes
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		mudmagic.1

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|glib/.*\.h>|glib.h>|g' \
		${WRKSRC}/src/network/network.h \
		${WRKSRC}/src/configuration/configuration.h \
		${WRKSRC}/src/interface/tools.c \
		${WRKSRC}/src/interface/theme_select.c \
		${WRKSRC}/src/protocols/http.h \
		${WRKSRC}/src/utils/gamelist.c \
		${WRKSRC}/src/utils/muderr.h \
		${WRKSRC}/src/utils/alias_triggers.c \
		${WRKSRC}/src/utils/gamelist.h

.include <bsd.port.mk>
