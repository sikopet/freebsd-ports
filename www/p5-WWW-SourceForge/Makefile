# Created by: Yuan-Chung Hsiao <ychsiao@ychsiao.idv.tw>
# $FreeBSD$

PORTNAME=	WWW-SourceForge
PORTVERSION=	0.090
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GUGOD
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0$//}

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	Retrieve information from SourceForge site

BUILD_DEPENDS=	p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-HTML-TableExtract>=0:${PORTSDIR}/www/p5-HTML-TableExtract \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	WWW::SourceForge.3 WWW::SourceForge::Project.3

NO_STAGE=	yes
.include <bsd.port.mk>
