# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD$

PORTNAME=	RDF-Notation3
PORTVERSION=	0.91
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	RDF Notation3 parser

BUILD_DEPENDS=	p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX \
		p5-RDF-Core>=0:${PORTSDIR}/textproc/p5-RDF-Core \
		p5-RDFStore>=0:${PORTSDIR}/textproc/p5-RDFStore
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		RDF::Notation3.3 RDF::Notation3::PrefTriples.3 \
		RDF::Notation3::RDFCore.3 RDF::Notation3::RDFStore.3 \
		RDF::Notation3::ReaderFile.3 RDF::Notation3::ReaderString.3 \
		RDF::Notation3::SAX.3 RDF::Notation3::Template::TReader.3 \
		RDF::Notation3::Template::TTriples.3 \
		RDF::Notation3::Template::TXML.3 RDF::Notation3::Triples.3 \
		RDF::Notation3::XML.3

NO_STAGE=	yes
post-patch:
	@${FIND} ${WRKSRC} -name "*.pm" | \
	${XARGS} ${REINPLACE_CMD} -i '' -e 's!^require 5.005_62;!!'
	${MV} ${WRKSRC}/doc/*.pod ${WRKSRC}/lib/RDF

.include <bsd.port.mk>
