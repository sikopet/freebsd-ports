# Created by: Tsung-Han Yeh <snowfly@yuntech.edu.tw>
# $FreeBSD$

PORTNAME=	Module-Compile
PORTVERSION=	0.23
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	Provide a system for writing modules that compile other Perl modules

BUILD_DEPENDS=	p5-Digest-SHA1>=0:${PORTSDIR}/security/p5-Digest-SHA1
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Module::Compile.3 \
		Module::Compile::Opt.3 \
		Module::Install::Admin::PMC.3 \
		Module::Install::PMC.3\
		Module::Optimize.3

NO_STAGE=	yes
.include <bsd.port.mk>
