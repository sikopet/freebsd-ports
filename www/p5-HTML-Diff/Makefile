# Created by: Travis Campbell <hcoyote@ghostar.org>
# $FreeBSD$

PORTNAME=	HTML-Diff
PORTVERSION=	0.561
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	hcoyote@ghostar.org
COMMENT=	A Perl module for finding changes between two strings of HTML

BUILD_DEPENDS=	p5-Algorithm-Diff>=0:${PORTSDIR}/devel/p5-Algorithm-Diff
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		HTML::Diff.3

NO_STAGE=	yes
.include <bsd.port.mk>
