# Created by: domi@saargate.de
# $FreeBSD$

PORTNAME=	gpasman
PORTVERSION=	1.3.1
PORTREVISION=	4
CATEGORIES=	security
MASTER_SITES=	http://gpasman.sourceforge.net/files/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Password manager that stores password information encrypted

PLIST_FILES=	bin/gpasman
USE_GMAKE=	yes
USE_GNOME=	gtk12
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	GTKCONFIG="${GTK_CONFIG}"

NO_STAGE=	yes
do-install:
	 ${INSTALL_PROGRAM} ${WRKSRC}/src/gpasman ${PREFIX}/bin

.include <bsd.port.mk>
