# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Test-InDistDir
PORTVERSION=	1.112071
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Test
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Test environment setup for development with IDE

USES=		perl5
USE_PERL5=	configure

MAN3=	Test::InDistDir.3

regression-test: build
	cd ${WRKSRC}/ && ${MAKE} test

NO_STAGE=	yes
.include <bsd.port.mk>
