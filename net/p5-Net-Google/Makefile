# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD$

PORTNAME=	Net-Google
PORTVERSION=	1.0.1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Simple OOP-ish interface to the Google SOAP API

BUILD_DEPENDS=	p5-SOAP-Lite>=0:${PORTSDIR}/net/p5-SOAP-Lite
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Net::Google.3 Net::Google::Cache.3 Net::Google::Response.3 \
		Net::Google::Search.3 Net::Google::Service.3 \
		Net::Google::Spelling.3 Net::Google::tool.3

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -i '' -e 's/CPAN/ExtUtils/g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
