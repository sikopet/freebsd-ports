# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD$

PORTNAME=	MARC-Charset
PORTVERSION=	1.35
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Convert MARC-8 encoded strings to UTF-8

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		MARC::Charset.3 \
		MARC::Charset::Code.3 \
		MARC::Charset::Compiler.3 \
		MARC::Charset::Constants.3 \
		MARC::Charset::Table.3

NO_STAGE=	yes
.include <bsd.port.mk>
