# Created by: Steven Kreuzer <skreuzer@exit2shel.com>
# $FreeBSD$

PORTNAME=	Net-FireEagle
PORTVERSION=	1.6
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Access Yahoo's FireEagle location service

RUN_DEPENDS=	p5-Net-OAuth-Simple>=1.0:${PORTSDIR}/net/p5-Net-OAuth-Simple \
		p5-libwww>=5.805:${PORTSDIR}/www/p5-libwww \
		p5-JSON-Any>=1.15:${PORTSDIR}/converters/p5-JSON-Any \
		p5-Net-SSLeay>=1.30:${PORTSDIR}/security/p5-Net-SSLeay
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN1=		fireeagle.1
MAN3=		Net::FireEagle.3

NO_STAGE=	yes
.include <bsd.port.mk>
