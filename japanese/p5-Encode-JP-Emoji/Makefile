# $FreeBSD$

PORTNAME=	Encode-JP-Emoji
PORTVERSION=	0.60
CATEGORIES=	japanese perl5
MASTER_SITES=	CPAN

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for Emoji encodings and cross-mapping tables

USES=		perl5
USE_PERL5=	configure

MAN3=	Encode::JP::Emoji.3 \
	Encode::JP::Emoji::Encoding.3 \
	Encode::JP::Emoji::FB_EMOJI_TEXT.3 \
	Encode::JP::Emoji::Mapping.3 \
	Encode::JP::Emoji::PP.3 \
	Encode::JP::Emoji::Property.3

NO_STAGE=	yes
.include <bsd.port.pre.mk>
PKGNAMEPREFIX:=	${PKGNAMEPREFIX}p5-
.include <bsd.port.post.mk>
