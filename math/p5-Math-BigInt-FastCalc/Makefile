# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Math-BigInt-FastCalc
PORTVERSION=	0.30
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Math::BigInt::Calc with some XS for more speed

BUILD_DEPENDS=	p5-Math-BigInt>=1.997:${PORTSDIR}/math/p5-Math-BigInt
RUN_DEPENDS=	p5-Math-BigInt>=1.997:${PORTSDIR}/math/p5-Math-BigInt

USES=		perl5
USE_PERL5=	configure

MAN3=		Math::BigInt::FastCalc.3

PORTSCOUT=	skipv:0.251

NO_STAGE=	yes
.include <bsd.port.mk>
