# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD$

PORTNAME=	HTML-Prototype
PORTVERSION=	1.48
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Generate HTML and JavaScript for the Prototype library

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		HTML::Prototype.3 \
		HTML::Prototype::Controls.3 \
		HTML::Prototype::DragDrop.3 \
		HTML::Prototype::Effects.3 \
		HTML::Prototype::Helper::Tag.3 \
		HTML::Prototype::Helper.3 \
		HTML::Prototype::Js.3

NO_STAGE=	yes
.include <bsd.port.mk>
