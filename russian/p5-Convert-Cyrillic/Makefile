# Created by: Sergey Kandaurov <pluknet@gmail.com>
# $FreeBSD$

PORTNAME=	Convert-Cyrillic
PORTVERSION=	1.05
CATEGORIES=	russian converters perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	cyrillic-${PORTVERSION}

MAINTAINER=	pluknet@gmail.com
COMMENT=	Routines for converting from one Cyrillic charset to another

BUILD_DEPENDS=	p5-Unicode-Map8>=0:${PORTSDIR}/converters/p5-Unicode-Map8
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Convert::Cyrillic.3 \
		Lingua::DetectCharset.3

NO_STAGE=	yes
.include <bsd.port.mk>
