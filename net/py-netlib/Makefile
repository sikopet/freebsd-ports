# Created by: Hung-Yi Chen <gaod@hychen.org>
# $FreeBSD$

PORTNAME=	netlib
PORTVERSION=	0.9.2
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	gaod@hychen.org
COMMENT=	Collection of network utilities

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}asn1>0:${PORTSDIR}/devel/py-asn1 \
		${PYTHON_PKGNAMEPREFIX}openssl>0:${PORTSDIR}/security/py-openssl

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

NO_STAGE=	yes
.include <bsd.port.mk>
