# $FreeBSD$

PORTNAME=	Plack-Middleware-AddDefaultCharset
PORTVERSION=	0.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to port Apache2 AddDefaultCharset for Plack

RUN_DEPENDS=	\
	p5-Plack>=0.9925:${PORTSDIR}/www/p5-Plack
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Plack::Middleware::AddDefaultCharset.3

NO_STAGE=	yes
.include <bsd.port.mk>
