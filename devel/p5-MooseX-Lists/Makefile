# Created by: andrey@kostenko.name
# $FreeBSD$

PORTNAME=	MooseX-Lists
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Treat arrays and hashes as lists

RUN_DEPENDS=	p5-Moose>=0.93:${PORTSDIR}/devel/p5-Moose
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure
MAN3=	MooseX::Lists.3

NO_STAGE=	yes
.include <bsd.port.mk>
