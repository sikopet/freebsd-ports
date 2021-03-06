# Created by: Stefan Esser <se@FreeBSD.org>
# $FreeBSD$

PORTNAME=	XML-GDOME
PORTVERSION=	0.86
PORTREVISION=	2
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl module that provides the DOM Level 2 Core API for XML documents

LIB_DEPENDS=	gdome.8:${PORTSDIR}/textproc/gdome2
RUN_DEPENDS=	p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX \
		p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5 pkgconfig
USE_PERL5=	configure

MAN3=		XML::GDOME.3 \
		XML::GDOME::Attr.3 \
		XML::GDOME::CDATASection.3 \
		XML::GDOME::CharacterData.3 \
		XML::GDOME::Comment.3 \
		XML::GDOME::Document.3 \
		XML::GDOME::DocumentFragment.3 \
		XML::GDOME::DocumentType.3 \
		XML::GDOME::Element.3 \
		XML::GDOME::Entity.3 \
		XML::GDOME::EntityReference.3 \
		XML::GDOME::NamedNodeMap.3 \
		XML::GDOME::Node.3 \
		XML::GDOME::NodeList.3 \
		XML::GDOME::Notation.3 \
		XML::GDOME::ProcessingInstruction.3 \
		XML::GDOME::SAX::Builder.3 \
		XML::GDOME::SAX::Generator.3 \
		XML::GDOME::SAX::Parser.3 \
		XML::GDOME::Text.3 \
		XML::GDOME::XPath::Evaluator.3 \
		XML::GDOME::XPath::NSResolver.3 \
		XML::GDOME::XPath::Namespace.3 \
		XML::GDOME::XPath::Result.3

NO_STAGE=	yes
.include <bsd.port.mk>
