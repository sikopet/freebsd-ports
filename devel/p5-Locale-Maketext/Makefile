# Created by: Frank Mayhar <frank@exit.com>
# $FreeBSD$

PORTNAME=	Locale-Maketext
PORTVERSION=	1.23
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TODDR
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Framework for software localization and inheritance-based lexicons

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

TEST_DEPENDS=	p5-Test-Pod>=1.14:${PORTSDIR}/devel/p5-Test-Pod

USES=		perl5
USE_PERL5=	configure

MAN3=		Locale::Maketext.3 \
		Locale::Maketext::Cookbook.3 \
		Locale::Maketext::Guts.3 \
		Locale::Maketext::GutsLoader.3 \
		Locale::Maketext::TPJ13.3

NO_STAGE=	yes
.include <bsd.port.mk>
