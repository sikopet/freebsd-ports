# $FreeBSD$

PORTNAME=	remotedesk
PORTVERSION=	0.1
PORTREVISION=	2
CATEGORIES=	net gnustep
MASTER_SITES=	${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	gap
DISTNAME=	RemoteDesk-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphical interface to rdesktop

RUN_DEPENDS=	rdesktop:${PORTSDIR}/net/rdesktop

LICENSE=	GPLv2

USE_GNUSTEP=	yes
USE_GNUSTEP_BACK=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes

NO_STAGE=	yes
post-patch:
	${REINPLACE_CMD} -e 's|^GNUSTEP_INSTALLATION_DIR|#GNUSTEP_INSTALLATION_DIR|' \
		${WRKSRC}/GNUmakefile

.include <bsd.port.mk>
