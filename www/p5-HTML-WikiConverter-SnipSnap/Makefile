# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD$

PORTNAME=	HTML-WikiConverter-SnipSnap
PORTVERSION=	0.50
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Convert HTML to SnipSnap markup

BUILD_DEPENDS=	p5-HTML-WikiConverter>=0.54:${PORTSDIR}/www/p5-HTML-WikiConverter \
		p5-URI>=1.35:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		HTML::WikiConverter::SnipSnap.3

NO_STAGE=	yes
.include <bsd.port.mk>
