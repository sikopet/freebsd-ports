# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD$

PORTNAME=	OpenCA-REQ
PORTVERSION=	0.9.60
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MADWOLF
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:S/0$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension to easily manage Cert REQUESTs

BUILD_DEPENDS=	p5-X500-DN>=0:${PORTSDIR}/net/p5-X500-DN
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		OpenCA::REQ.3

NO_STAGE=	yes
post-patch:
	@${MV} ${WRKSRC}/prova.pl  ${WRKSRC}/prova.pl.sample

.include <bsd.port.mk>
