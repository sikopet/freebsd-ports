# Created by: Vanilla I. Shu <vanilla@FreeBSD.org>
# $FreeBSD$

PORTNAME=	HTML-Parser
PORTVERSION=	3.71
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Perl5 module for parsing HTML documents

RUN_DEPENDS=	p5-HTML-Tagset>=3:${PORTSDIR}/www/p5-HTML-Tagset
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		HTML::Entities.3 \
		HTML::Filter.3 \
		HTML::HeadParser.3 \
		HTML::LinkExtor.3 \
		HTML::Parser.3 \
		HTML::PullParser.3 \
		HTML::TokeParser.3

NO_STAGE=	yes
.include <bsd.port.mk>
