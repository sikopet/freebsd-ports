# Created by: Vadim Vatlin
# $FreeBSD$

PORTNAME=	JSON-RPC
PORTVERSION=	1.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DMAKI
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl implementation of JSON-RPC 1.1 protocol

BUILD_DEPENDS=	p5-Class-Accessor-Lite>=0:${PORTSDIR}/devel/p5-Class-Accessor-Lite \
		p5-HTTP-Message>=0:${PORTSDIR}/www/p5-HTTP-Message \
		p5-JSON>=0:${PORTSDIR}/converters/p5-JSON \
		p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS \
		p5-Plack>=0:${PORTSDIR}/www/p5-Plack \
		p5-Router-Simple>=0:${PORTSDIR}/www/p5-Router-Simple \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		JSON::RPC.3 \
		JSON::RPC::Constants.3 \
		JSON::RPC::Dispatch.3 \
		JSON::RPC::Legacy.3 \
		JSON::RPC::Legacy::Client.3 \
		JSON::RPC::Legacy::Procedure.3 \
		JSON::RPC::Legacy::Server.3 \
		JSON::RPC::Legacy::Server::Apache2.3 \
		JSON::RPC::Legacy::Server::CGI.3 \
		JSON::RPC::Legacy::Server::Daemon.3 \
		JSON::RPC::Parser.3 \
		JSON::RPC::Procedure.3 \
		JSON::RPC::Test.3

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.98:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
