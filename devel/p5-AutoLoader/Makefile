# Created by: Rong-En Fan <rafan@FreeBSD.org>
# $FreeBSD$

PORTNAME=	AutoLoader
PORTVERSION=	5.73
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	Load subroutines only on demand

USES=		perl5
USE_PERL5=	configure

MAN3=		AutoLoader.3 AutoSplit.3

NO_STAGE=	yes
regression-test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
