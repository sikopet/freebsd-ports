# $FreeBSD$

PORTNAME=	B-Compiling
PORTVERSION=	0.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to expose PL_compiling to perl

RUN_DEPENDS=	\
	p5-Sub-Exporter>0:${PORTSDIR}/devel/p5-Sub-Exporter
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	B::Compiling.3

NO_STAGE=	yes
.include <bsd.port.mk>
