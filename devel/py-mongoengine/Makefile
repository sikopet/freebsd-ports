# Created by: Mirko Zinn <mail@derzinn.de>
# $FreeBSD$

PORTNAME=	mongoengine
PORTVERSION=	0.8.4
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Object-Document-Mapper for working with MongoDB

LICENSE=	MIT

RUN_DEPENDS=	pymongo>=2.5:${PORTSDIR}/databases/pymongo

USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_NOEGGINFO=	yes

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} 's|classifiers=CLASSIFIERS,|classifiers=CLASSIFIERS,zip_safe=False,|' \
		${WRKSRC}/setup.py

.include <bsd.port.mk>
