# $FreeBSD$

PORTNAME=	Path-Dispatcher-Declarative
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SARTAK
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Sugary dispatcher for perl

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Path-Dispatcher>=1.02:${PORTSDIR}/devel/p5-Path-Dispatcher \
		p5-Any-Moose>=0:${PORTSDIR}/devel/p5-Any-Moose \
		p5-Sub-Exporter>=0:${PORTSDIR}/devel/p5-Sub-Exporter

RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Path::Dispatcher::Declarative.3

NO_STAGE=	yes
.include <bsd.port.mk>
