# Created by: andrey@kostenko.name
# $FreeBSD$

PORTNAME=	Gravatar-URL
PORTVERSION=	1.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MSCHWERN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Make URLs for Gravatars from an email address

BUILD_DEPENDS=	p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS \
		p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

TEST_DEPENDS=	p5-Test-Warn>=0:${PORTSDIR}/devel/p5-Test-Warn

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Gravatar::URL.3 Libravatar::URL.3 Unicornify::URL.3

NO_STAGE=	yes
.include <bsd.port.mk>
