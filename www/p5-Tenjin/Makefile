# $FreeBSD$

PORTNAME=	Tenjin
PORTVERSION=	0.070001
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for fast templating engine with support for embedded

RUN_DEPENDS=	p5-HTML-Parser>0:${PORTSDIR}/www/p5-HTML-Parser
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Try-Tiny>0:${PORTSDIR}/lang/p5-Try-Tiny

USES=		perl5
USE_PERL5=	configure

MAN3=	Tenjin.3 \
	Tenjin::Context.3 \
	Tenjin::Preprocessor.3 \
	Tenjin::Template.3 \
	Tenjin::Util.3

NO_STAGE=	yes
.include <bsd.port.mk>
