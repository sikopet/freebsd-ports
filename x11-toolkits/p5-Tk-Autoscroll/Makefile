# Created by: vanilla
# $FreeBSD$

PORTNAME=	Tk-Autoscroll
PORTVERSION=	1.14
PORTREVISION=	3
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Tk::Autoscroll - space invaders-like scrolling

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Tk::Autoscroll.3

NO_STAGE=	yes
.include <bsd.port.mk>
