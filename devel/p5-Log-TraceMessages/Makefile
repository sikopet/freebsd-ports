# Created by: Seamus Venasse <svenasse@polaris.ca>
# $FreeBSD$

PORTNAME=	Log-TraceMessages
PORTVERSION=	1.4
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension for trace messages used in debugging

BUILD_DEPENDS=	p5-HTML-FromText>=0:${PORTSDIR}/www/p5-HTML-FromText
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Log::TraceMessages.3

NO_STAGE=	yes
.include <bsd.port.mk>
