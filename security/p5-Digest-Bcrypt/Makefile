# Created by: Henk van Oers <hvo.pm@xs4all.nl>
# $FreeBSD$

PORTNAME=	Digest-Bcrypt
PORTVERSION=	1.0.1
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl interface to the bcrypt digest algorithm

LICENSE=	ART10

BUILD_DEPENDS=	p5-Crypt-Eksblowfish>0:${PORTSDIR}/security/p5-Crypt-Eksblowfish
RUN_DEPENDS=	p5-Crypt-Eksblowfish>0:${PORTSDIR}/security/p5-Crypt-Eksblowfish

USES=		perl5
USE_PERL5=	configure

MAN3=		Digest::Bcrypt.3

NO_STAGE=	yes
.include <bsd.port.mk>
