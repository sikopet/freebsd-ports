# Created by: chinsan
# $FreeBSD$

PORTNAME=	Business-TW-Invoice-U420
PORTVERSION=	0.01
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Print Taiwan Unified Invoice with U420 printer

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Business::TW::Invoice::U420.3

NO_STAGE=	yes
.include <bsd.port.mk>
