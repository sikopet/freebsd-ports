# Created by: Travis Campbell <hcoyote@ghostar.org>
# $FreeBSD$

PORTNAME=	Catalyst-Plugin-SubRequest
PORTVERSION=	0.20
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Make subrequests to actions in Catalyst

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Catalyst-Runtime>=5.90000:${PORTSDIR}/www/p5-Catalyst-Runtime
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Plugin::SubRequest.3

NO_STAGE=	yes
.include <bsd.port.mk>
