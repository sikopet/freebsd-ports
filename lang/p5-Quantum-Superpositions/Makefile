# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Quantum-Superpositions
PORTVERSION=	2.02
CATEGORIES=	lang science perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	QM-like superpositions in Perl

BUILD_DEPENDS=	p5-Class-Multimethods>=0:${PORTSDIR}/devel/p5-Class-Multimethods
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Quantum::Superpositions.3

USES=		perl5
USE_PERL5=	configure

NO_STAGE=	yes
.include <bsd.port.mk>
