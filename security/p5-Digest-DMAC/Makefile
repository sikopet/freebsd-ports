# Created by: Gabor Kovesdan
# $FreeBSD$

PORTNAME=	Digest-DMAC
PORTVERSION=	1.1.4
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Perl5 interface to DMAC Double Message-Digest Algorithms

BUILD_DEPENDS=	p5-Crypt-CBC>=0:${PORTSDIR}/security/p5-Crypt-CBC \
		p5-MIME-Base64>=0:${PORTSDIR}/converters/p5-MIME-Base64
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Digest::DMAC.3

NO_STAGE=	yes
.include <bsd.port.mk>
