# $FreeBSD$

PORTNAME=	trytond_account_statement
PORTVERSION=	2.4.3
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann.it
COMMENT=	Tryton Application Platform (Account Statement Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_account_invoice>=2.4.1:${PORTSDIR}/finance/trytond_account_invoice

CONFLICTS=	trytond_account_statement-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

NO_STAGE=	yes
.include <bsd.port.mk>
