# Created by: vanilla
# $FreeBSD$

PORTNAME=	Tk-ColourChooser
PORTVERSION=	1.52
PORTREVISION=	3
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl/Tk module providing a Colour selection dialogue box

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Tk::ColourChooser.3

NO_STAGE=	yes
.include <bsd.port.mk>
