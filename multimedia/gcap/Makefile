# Created by: Pierre Guinoiseau <geekounet@poildetroll.net>
# $FreeBSD$

PORTNAME=	gcap
PORTVERSION=	0.1.1
CATEGORIES=	multimedia
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	geekounet@poildetroll.net
COMMENT=	Command line tool for downloading Youtube closed captions

LICENSE=	GPLv3

BUILD_DEPENDS=	p5-Getopt-ArgvFile>=1.11:${PORTSDIR}/devel/p5-Getopt-ArgvFile \
		p5-HTML-Parser>=3.68:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Umph-Prompt>=0:${PORTSDIR}/multimedia/p5-Umph-Prompt \
		p5-XML-DOM>=1.44:${PORTSDIR}/textproc/p5-XML-DOM
RUN_DEPENDS=	p5-Getopt-ArgvFile>=1.11:${PORTSDIR}/devel/p5-Getopt-ArgvFile \
		p5-HTML-Parser>=3.68:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Umph-Prompt>=0:${PORTSDIR}/multimedia/p5-Umph-Prompt \
		p5-XML-DOM>=1.44:${PORTSDIR}/textproc/p5-XML-DOM

TEST_DEPENDS=	p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod

USES=		perl5
USE_PERL5=	configure

MAN1=		gcap.1
PLIST_DIRS=	${SITE_PERL_REL}/${PERL_ARCH}/auto/gcap
PLIST_FILES=	bin/gcap ${SITE_PERL_REL}/${PERL_ARCH}/auto/gcap/.packlist

NO_STAGE=	yes
.include <bsd.port.mk>
