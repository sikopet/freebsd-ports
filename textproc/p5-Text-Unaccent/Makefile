# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Text-Unaccent
PORTVERSION=	1.08
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Remove accents from a string

MAN3=	Text::Unaccent.3

USES=		iconv perl5
USE_PERL5=	configure
CFLAGS+=	-DICONV_CONST=const

NO_STAGE=	yes
.include <bsd.port.mk>
