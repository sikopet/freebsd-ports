# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD$

PORTNAME=	discogs-client
PORTVERSION=	1.1.1
CATEGORIES=	audio python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	feld@FreeBSD.org
COMMENT=	Python interface to Discogs website

LICENSE=	BSD

RUN_DEPENDS=    ${PYTHON_PKGNAMEPREFIX}requests>=1.0.0:${PORTSDIR}/www/py-requests

USE_PYTHON=	yes
NO_STAGE=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
