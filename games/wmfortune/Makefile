# Created by: Alexey Dokuchaev <danfe@regency.nsu.ru>
# $FreeBSD$

PORTNAME=	wmfortune
PORTVERSION=	0.241
PORTREVISION=	3
CATEGORIES=	games windowmaker afterstep
MASTER_SITES=	http://www.dockapps.org/files/90/128/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A dockapp that outputs fortune messages

PLIST_FILES=	bin/wmfortune
USE_GMAKE=	yes
USE_XORG=	xpm

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmfortune ${PREFIX}/bin

.include <bsd.port.mk>
