# Created by: Tomoyuki Sakurai <cherry@trombik.org>
# $FreeBSD$

PORTNAME=	Module-Recursive-Require
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Require module recursively

BUILD_DEPENDS=	p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS=	p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require

USES=		perl5
USE_PERL5=	configure
MAN3=	Module::Recursive::Require.3

NO_STAGE=	yes
.include <bsd.port.mk>
