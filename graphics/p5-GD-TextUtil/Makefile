# Created by: Dmitry Sivachenko <dima@Chg.RU>
# $FreeBSD$

PORTNAME=	GD-TextUtil
PORTVERSION=	0.86
PORTREVISION=	4
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	GDTextUtil-${PORTVERSION}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Text utilities for use with GD drawing package

RUN_DEPENDS=	p5-GD>=0:${PORTSDIR}/graphics/p5-GD

USES=		perl5
USE_PERL5=	configure

MAN3=		GD::Text.3 GD::Text::Wrap.3 GD::Text::Align.3

NO_STAGE=	yes
.include <bsd.port.mk>
