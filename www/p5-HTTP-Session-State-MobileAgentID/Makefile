# $FreeBSD$

PORTNAME=	HTTP-Session-State-MobileAgentID
PORTVERSION=	0.46
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TOKUHIROM
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to maintain session IDs using mobile phone unique id

RUN_DEPENDS=	\
	p5-HTTP-MobileAgent>=0.28:${PORTSDIR}/www/p5-HTTP-MobileAgent \
	p5-HTTP-Session>=0.38:${PORTSDIR}/www/p5-HTTP-Session \
	p5-Net-CIDR-MobileJP>=0.20:${PORTSDIR}/net/p5-Net-CIDR-MobileJP
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	configure

MAN3=	HTTP::Session::State::MobileAgentID.3

NO_STAGE=	yes
.include <bsd.port.mk>
