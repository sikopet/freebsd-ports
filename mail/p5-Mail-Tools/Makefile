# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Mail-Tools
PORTVERSION=	2.12
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	MailTools-${PORTVERSION}

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl5 modules for dealing with Internet e-mail messages

RUN_DEPENDS=	p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Mail::Address.3 \
		Mail::Cap.3 \
		Mail::Field.3 \
		Mail::Field::AddrList.3 \
		Mail::Field::Date.3 \
		Mail::Field::Generic.3 \
		Mail::Filter.3 \
		Mail::Header.3 \
		Mail::Internet.3 \
		Mail::Mailer.3 \
		Mail::Send.3 \
		Mail::Util.3

NO_STAGE=	yes
.include <bsd.port.mk>
