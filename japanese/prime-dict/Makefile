# Created by: Gen Otsuji<otsuji@users.sourceforge.jp>
# $FreeBSD$

PORTNAME=	prime
PORTVERSION=	1.0.0
PORTREVISION=	2
CATEGORIES=	japanese
MASTER_SITES=	http://prime.sourceforge.jp/src/
PKGNAMESUFFIX=	-dict
DISTNAME=	${PORTNAME}${PKGNAMESUFFIX}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	otsuji@users.sourceforge.jp
COMMENT=	A dictionary set for the prime

USE_RUBY=	yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-rubydir=${RUBY_SITELIBDIR}
USE_AUTOTOOLS=	automake autoconf

NO_STAGE=	yes
pre-configure:
	@(cd ${CONFIGURE_WRKSRC} && ${SETENV} ${AUTOTOOLS_ENV} ${ACLOCAL})

.include <bsd.port.mk>
