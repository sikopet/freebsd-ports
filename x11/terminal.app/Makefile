# Created by: gurkan@phys.ethz.ch
# $FreeBSD$

PORTNAME=	terminal.app
PORTVERSION=	0.9.8
CATEGORIES=	x11 gnustep
MASTER_SITES=	${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	gap
DISTNAME=	Terminal-${PORTVERSION}


MAINTAINER=	ports@FreeBSD.org
COMMENT=	Terminal Emulator for GNUstep

USE_GNUSTEP=	yes
USE_GNUSTEP_BACK=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes

MAKE_ENV+=	GNUSTEP_INSTALLATION_DOMAIN=SYSTEM

NO_STAGE=	yes
.include <bsd.port.mk>
