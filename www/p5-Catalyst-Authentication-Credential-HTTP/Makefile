# Created by: Denis Pokataev <catone@cpan.org>
# $FreeBSD$

PORTNAME=	Catalyst-Authentication-Credential-HTTP
PORTVERSION=	1.015
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	catone@cpan.org
COMMENT=	HTTP plain and digest authentication plugin for Catalyst

BUILD_DEPENDS=	p5-Catalyst-Runtime>=0:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Data-UUID>=0.11:${PORTSDIR}/devel/p5-Data-UUID \
		p5-Catalyst-Plugin-Authentication>=0.10005:${PORTSDIR}/www/p5-Catalyst-Plugin-Authentication \
		p5-String-Escape>=0:${PORTSDIR}/textproc/p5-String-Escape \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-MockObject>=0:${PORTSDIR}/devel/p5-Test-MockObject \
		p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Authentication::Credential::HTTP.3

NO_STAGE=	yes
.include <bsd.port.mk>
