# $FreeBSD$

PORTNAME=	Devel-StackTrace-AsHTML
PORTVERSION=	0.14
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to display stack trace in HTML

RUN_DEPENDS=	p5-Devel-StackTrace>0:${PORTSDIR}/devel/p5-Devel-StackTrace
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Devel::StackTrace::AsHTML.3

NO_STAGE=	yes
.include <bsd.port.mk>
