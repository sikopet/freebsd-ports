# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD$

PORTNAME=	WWW-Scripter-Plugin-JavaScript
PORTVERSION=	0.008
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	JavaScript plugin for WWW::Scripter

RUN_DEPENDS=	p5-WWW-Scripter>0:${PORTSDIR}/www/p5-WWW-Scripter \
		p5-JE>0:${PORTSDIR}/www/p5-JE
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		WWW::Scripter::Plugin::JavaScript.3 \
		WWW::Scripter::Plugin::JavaScript::JE.3

NO_STAGE=	yes
.include <bsd.port.mk>
