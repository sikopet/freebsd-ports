# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Net-SMTP-TLS-ButMaintained
PORTVERSION=	0.24
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	SMTP client supporting TLS and AUTH

RUN_DEPENDS=	p5-Digest-HMAC>=0:${PORTSDIR}/security/p5-Digest-HMAC \
		p5-IO-Socket-SSL>=0:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-Net-SSLeay>=0:${PORTSDIR}/security/p5-Net-SSLeay
TEST_DEPENDS=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::SMTP::TLS::ButMaintained.3

NO_STAGE=	yes
.include <bsd.port.mk>
