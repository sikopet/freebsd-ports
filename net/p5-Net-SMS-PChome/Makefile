# Created by: Tsung-Han Yeh <snowfly@yuntech.edu.tw>
# $FreeBSD$

PORTNAME=	Net-SMS-PChome
PORTVERSION=	0.11
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	Send SMS messages via the sms.pchome.com.tw service

BUILD_DEPENDS=	p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-HTML-TagParser>=0:${PORTSDIR}/www/p5-HTML-TagParser \
		p5-Date-Calc>=0:${PORTSDIR}/devel/p5-Date-Calc
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::SMS::PChome.3

NO_STAGE=	yes
.include <bsd.port.mk>
