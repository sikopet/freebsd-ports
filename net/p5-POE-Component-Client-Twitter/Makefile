# Created by: Masahiro Teramoto <markun@onohara.to>
# $FreeBSD$

PORTNAME=	POE-Component-Client-Twitter
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	markun@onohara.to
COMMENT=	POE chat component for twitter.com

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-JSON-Any>=0:${PORTSDIR}/converters/p5-JSON-Any \
		p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		p5-POE-Component-Client-HTTP>=0:${PORTSDIR}/www/p5-POE-Component-Client-HTTP \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML \
		p5-Test-Base>=0:${PORTSDIR}/devel/p5-Test-Base \
		p5-Module-Install>=0:${PORTSDIR}/devel/p5-Module-Install
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		POE::Component::Client::Twitter.3

NO_STAGE=	yes
.include <bsd.port.mk>
