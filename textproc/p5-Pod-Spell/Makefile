# $FreeBSD$

PORTNAME=	Pod-Spell
PORTVERSION=	1.05
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A formatter for spellchecking Pod

BUILD_DEPENDS=	p5-Pod-Escapes>=1.01:${PORTSDIR}/textproc/p5-Pod-Escapes
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN1=	podspell.1
MAN3=	Pod::Spell.3 \
	Pod::Wordlist.3

NO_STAGE=	yes
.include <bsd.port.mk>
