# Created by: chinsan
# $FreeBSD$

PORTNAME=	Tie-TinyURL
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Tied interface to TinyURL.com

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=		Tie::TinyURL.3

USES=		perl5
USE_PERL5=	modbuild

NO_STAGE=	yes
.include <bsd.port.mk>
