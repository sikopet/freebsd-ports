# Created by: Zane C, Bowers <vvelox@vvelox.net>
# $FreeBSD$

PORTNAME=	Image-Size-FillFullSelect
PORTVERSION=	0.1.0
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VVELOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Pick whether an image fill setting for a image should be fill or full

BUILD_DEPENDS=	p5-Image-Size>=3.230:${PORTSDIR}/graphics/p5-Image-Size
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Image::Size::FillFullSelect.3

NO_STAGE=	yes
.include <bsd.port.mk>
