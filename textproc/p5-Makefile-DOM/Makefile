# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Makefile-DOM
PORTVERSION=	0.006
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:AGENT
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Simple DOM parser for Makefiles

RUN_DEPENDS=	p5-Clone>=0.18:${PORTSDIR}/devel/p5-Clone \
		p5-List-MoreUtils>=0.21:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Params-Util>=0.22:${PORTSDIR}/devel/p5-Params-Util

USES=		perl5
USE_PERL5=	configure

MAN3=		MDOM::Dumper.3 \
		MDOM::Element.3 \
		MDOM::Node.3 \
		MDOM::Token.3 \
		MDOM::Token::Comment.3 \
		MDOM::Token::Separator.3 \
		MDOM::Token::Whitespace.3 \
		Makefile::DOM.3

NO_STAGE=	yes
.include <bsd.port.mk>
