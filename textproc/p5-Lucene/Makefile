# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Lucene
PORTVERSION=	0.18
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TBUSCH
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	API to the C++ port of the Lucene search engine

DEPRECATED=	Broken for more than 6 month
EXPIRATION_DATE=	2013-11-18

LIB_DEPENDS=	clucene-core:${PORTSDIR}/textproc/clucene

BROKEN=		incompatible with CLucene 2.3

USES=		perl5
USE_PERL5=	configure
CC=		${CXX}
CONFIGURE_ARGS+="INC=-I${LOCALBASE}/include -I${LOCALBASE}/lib"

MAN3=	Lucene.3

NO_STAGE=	yes
.include <bsd.port.mk>
