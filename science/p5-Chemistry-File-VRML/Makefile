# Created by: Steve Wills <steve@mouf.net>
# $FreeBSD$

PORTNAME=	Chemistry-File-VRML
PORTVERSION=	0.10
CATEGORIES=	science perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ITUB
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Generate VRML models for molecules

BUILD_DEPENDS=	p5-Chemistry-Mol>=0:${PORTSDIR}/science/p5-Chemistry-Mol
RUN_DEPENDS=	p5-Chemistry-Mol>=0:${PORTSDIR}/science/p5-Chemistry-Mol

MAN3=	Chemistry::File::VRML.3

USES=		perl5
USE_PERL5=	configure

NO_STAGE=	yes
.include <bsd.port.mk>
