# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	XML-XPathEngine
PORTVERSION=	0.14
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Re-usable XPath engine for DOM-like trees

USES=		perl5
USE_PERL5=	configure
REINPLACE_ARGS=	-i ''

MAN3=		XML::XPathEngine.3 \
		XML::XPathEngine::Boolean.3 \
		XML::XPathEngine::Literal.3 \
		XML::XPathEngine::NodeSet.3 \
		XML::XPathEngine::Number.3

# For errors like
# Bareword "XML::XPathEngine::Step::..." not allowed while "strict subs" in use at ...
NO_STAGE=	yes
post-patch:
	${REINPLACE_CMD} -Ee 's,(use strict;),\1 no strict "subs";,' ${WRKSRC}/lib/XML/XPathEngine.pm

.include <bsd.port.mk>
