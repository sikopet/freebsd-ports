# Created by: Ali Mashtizadeh <ali@mashtizadeh.org>
# $FreeBSD$

PORTNAME=	GMail-IMAPD
PORTVERSION=	0.94
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	mashtizadeh@gmail.com
COMMENT=	Perl IMAP4 gateway to Google's webmail service

BUILD_DEPENDS=	p5-Mail-Webmail-Gmail>=0:${PORTSDIR}/mail/p5-Mail-Webmail-Gmail
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		GMail::IMAPD.3

NO_STAGE=	yes
.include <bsd.port.mk>
