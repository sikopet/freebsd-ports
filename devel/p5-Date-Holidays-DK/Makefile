# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Date-Holidays-DK
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Determine Danish public holidays

BUILD_DEPENDS=	p5-Date-Simple>=0:${PORTSDIR}/devel/p5-Date-Simple \
		p5-Date-Easter>=0:${PORTSDIR}/devel/p5-Date-Easter
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Date::Holidays::DK.3

NO_STAGE=	yes
.include <bsd.port.mk>
