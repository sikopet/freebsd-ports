# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD$

PORTNAME=	CGI-modules
PORTVERSION=	2.76
CATEGORIES=	www perl5
MASTER_SITES=	http://stein.cshl.org/WWW/software/CGI::modules/ \
		http://backpan.cpan.org/authors/id/LDS/
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Modules for perl5, for use in writing CGI scripts

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww

USES=		perl5
USE_PERL5=	configure

MAN3=		CGI::Base.3 CGI::BasePlus.3 CGI::Carp.3 CGI::Form.3 \
		CGI::MiniSvr.3 CGI::Request.3

NO_STAGE=	yes
post-patch:
	@${RM} ${WRKSRC}/CGI/*.orig

.include <bsd.port.mk>
