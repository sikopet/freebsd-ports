# Created by: Pietro Cerutti <gahr@gahr.ch>
# $FreeBSD$

PORTNAME=	musica
PORTVERSION=	1.1.4
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://ict.ewi.tudelft.nl/~erik/open-source/musica/

MAINTAINER=	gahr@FreeBSD.org
COMMENT=	GTK based midi player

USE_GNOME=	gtk12
NO_STAGE=	yes

GNU_CONFIGURE=	yes
USES=		gmake

PLIST_FILES=	bin/musica

post-patch:
	${REINPLACE_CMD} -e 's|char|const char|g' \
		${WRKSRC}/src/*.xpm ${WRKSRC}/include/pixmaps.hh

.include <bsd.port.mk>
