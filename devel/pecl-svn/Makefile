# Created by: Alex Kiesel <kiesel@schlund.de>
# $FreeBSD$

PORTNAME=	svn
PORTVERSION=	1.0.2
CATEGORIES=	devel pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A PECL extension to the libsvn library

LICENSE=	PHP301

LIB_DEPENDS=	svn_client-1:${PORTSDIR}/devel/subversion16

USE_PHP=	yes
USE_PHPEXT=	yes

NO_STAGE=	yes
.include <bsd.port.mk>
