# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD$

PORTNAME=	HTTP-Tiny
PORTVERSION=	0.036
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DAGOLDEN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Small, simple, correct HTTP/1.1 client

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

OPTIONS_DEFINE=	COOKIE HTTPS
OPTIONS_DEFAULT=COOKIE HTTPS

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCOOKIE}
BUILD_DEPENDS+=	p5-HTTP-CookieJar>=0.001:${PORTSDIR}/www/p5-HTTP-CookieJar
RUN_DEPENDS+=	p5-HTTP-CookieJar>=0.001:${PORTSDIR}/www/p5-HTTP-CookieJar
.endif

.if ${PORT_OPTIONS:MHTTPS}
BUILD_DEPENDS+=	p5-IO-Socket-SSL>=1.42:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-Net-SSLeay>=1.49:${PORTSDIR}/security/p5-Net-SSLeay \
		p5-Mozilla-CA>=20120823:${PORTSDIR}/www/p5-Mozilla-CA
RUN_DEPENDS+=	p5-IO-Socket-SSL>=1.42:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-Net-SSLeay>=1.49:${PORTSDIR}/security/p5-Net-SSLeay \
		p5-Mozilla-CA>=20120823:${PORTSDIR}/www/p5-Mozilla-CA
.endif

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.96:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
