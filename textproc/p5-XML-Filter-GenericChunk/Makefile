# Created by: Hansjoerg Pehofer <hansjoerg.pehofer@uibk.ac.at>
# $FreeBSD$

PORTNAME=	XML-Filter-GenericChunk
PORTVERSION=	0.07
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Base Class for SAX Filters parsing WellBallanced Chunks

BUILD_DEPENDS=	p5-XML-LibXML>=1.4:${PORTSDIR}/textproc/p5-XML-LibXML \
		p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		XML::Filter::CharacterChunk.3 \
		XML::Filter::GenericChunk.3

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -i '' '/use warnings/d' \
		${WRKSRC}/t/02filter.t \
		${WRKSRC}/CharacterChunk.pm \
		${WRKSRC}/GenericChunk.pm

.include <bsd.port.mk>
