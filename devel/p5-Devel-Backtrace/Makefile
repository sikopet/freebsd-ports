# Created by: Andrey Kostenko <andrey@kostenko.name>
# $FreeBSD$

PORTNAME=	Devel-Backtrace
PORTVERSION=	0.12
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Object-oriented backtrace

BUILD_DEPENDS=	p5-String-Escape>=0:${PORTSDIR}/textproc/p5-String-Escape \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor
RUN_DEPENDS=	p5-String-Escape>=0:${PORTSDIR}/textproc/p5-String-Escape \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor

USES=		perl5
USE_PERL5=	configure
MAN3=		Devel::Backtrace.3 \
		Devel::Backtrace::Point.3 \
		Devel::DollarAt.3

NO_STAGE=	yes
.include <bsd.port.mk>
