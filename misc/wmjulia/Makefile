# Created by: Alexey Dokuchaev <danfe@regency.nsu.ru>
# $FreeBSD$

PORTNAME=	wmjulia
PORTVERSION=	0.40
PORTREVISION=	5
CATEGORIES=	misc windowmaker afterstep
MASTER_SITES=	http://web.novalis.org/programs/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Dockapp that creates an animated Julia set

PLIST_FILES=	bin/wmjulia
WRKSRC=	${WRKDIR}/${PORTNAME}.app/${PORTNAME}
USE_GMAKE=	yes
USE_XORG=	xpm xext

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
