# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD$

PORTNAME=	XML-Directory
PORTVERSION=	1.00
PORTREVISION=	2
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Returns a content of directory as XML

BUILD_DEPENDS=	p5-RDF-Notation3>=0:${PORTSDIR}/textproc/p5-RDF-Notation3 \
		p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		XML::Directory.3 XML::Directory::Apache.3 \
		XML::Directory::SAX.3 XML::Directory::String.3

NO_STAGE=	yes
.include <bsd.port.mk>
