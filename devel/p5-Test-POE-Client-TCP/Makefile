# $FreeBSD$

PORTNAME=	Test-POE-Client-TCP
PORTVERSION=	1.12
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A POE Component providing TCP client services for test cases

BUILD_DEPENDS=	p5-POE>=1.28:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Test::POE::Client::TCP.3

NO_STAGE=	yes
.include <bsd.port.mk>
