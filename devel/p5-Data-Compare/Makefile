# Created by: Anton Berezin <tobez@tobez.org>
# $FreeBSD$

PORTNAME=	Data-Compare
PORTVERSION=	1.2200
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DCANTRELL
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0*$//}

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Data::Compare - compare perl data structures

BUILD_DEPENDS=	p5-File-Find-Rule>=0:${PORTSDIR}/devel/p5-File-Find-Rule
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Data::Compare.3 Data::Compare::Plugins.3 \
		Data::Compare::Plugins::Scalar::Properties.3

NO_STAGE=	yes
.include <bsd.port.mk>
