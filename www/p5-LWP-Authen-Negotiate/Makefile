# Created by: Tom Judge <tj@FreeBSD.org>
# $FreeBSD$

PORTNAME=	LWP-Authen-Negotiate
PORTVERSION=	0.08
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tj@FreeBSD.org
COMMENT=	Perl extension to enable LWP to authenticate using negotiate

RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		LWP::Authen::Negotiate.3

NO_STAGE=	yes
.include <bsd.port.mk>
