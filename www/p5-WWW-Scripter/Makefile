# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD$

PORTNAME=	WWW-Scripter
PORTVERSION=	0.030
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Module for scripting web sites that have scripts

RUN_DEPENDS=	p5-libwww>=5.829:${PORTSDIR}/www/p5-libwww \
		p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-HTML-DOM>=0:${PORTSDIR}/www/p5-HTML-DOM \
		p5-CSS-DOM>=0:${PORTSDIR}/www/p5-CSS-DOM
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		WWW::Scripter::Location.3 WWW::Scripter.3 \
		WWW::Scripter::History.3 WWW::Scripter::WindowGroup.3

NO_STAGE=	yes
.include <bsd.port.mk>
