# Created by: Jeffrey H. Johnson <CPE1704TKS@bellsouth.net>
# $FreeBSD$

PORTNAME=	xar
PORTVERSION=	1.5.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE} \
		${MASTER_SITE_GENTOO}
MASTER_SITE_SUBDIR=	distfiles

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	OpenDarwin XML eXtensible ARchiver

LICENSE=	BSD

USE_LDCONFIG=	yes

NO_STAGE=	yes
USES=		gmake
USE_GNOME=	libxml2
USE_OPENSSL=	yes

GNU_CONFIGURE=	yes

MAN1=		xar.1

.include <bsd.port.mk>
