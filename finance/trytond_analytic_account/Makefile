# $FreeBSD$

PORTNAME=	trytond_analytic_account
PORTVERSION=	2.4.1
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann.it
COMMENT=	Tryton Application Platform (Analytic Account Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_company>=2.4.0:${PORTSDIR}/finance/trytond_company \
		trytond_party>=2.4.0:${PORTSDIR}/finance/trytond_party \
		trytond_currency>=2.4.0:${PORTSDIR}/finance/trytond_currency \
		trytond_account>=2.4.1:${PORTSDIR}/finance/trytond_account

CONFLICTS=	trytond_analytic_account-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

NO_STAGE=	yes
.include <bsd.port.mk>
