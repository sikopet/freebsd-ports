# Created by: Erwin Lansing <erwin@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Image-Imlib2
PORTVERSION=	2.03
PORTREVISION=	3
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl interface to the Imlib2 image library

BUILD_DEPENDS+=	p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple

USES=		perl5
USE_PERL5=	modbuild
USE_EFL=	imlib2
NO_STAGE=	yes

MAN3=		Image::Imlib2.3

.if !defined(NOPORTDOCS)
PORTDOCS=	CHANGES
EXAMPLES=	examples/benchmark.pl examples/benchmark.txt examples/maeda.pl

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${EXAMPLES:S|^|${WRKSRC}/|} ${EXAMPLESDIR}
	@${ECHO_MSG} "===> Examples installed in ${EXAMPLESDIR}."
.endif

.include <bsd.port.mk>
