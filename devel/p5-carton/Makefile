# $FreeBSD$

PORTNAME=	carton
PORTVERSION=	0.9.15
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-v${PORTVERSION}

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl module dependency manager

RUN_DEPENDS=	\
	p5-App-cpanminus>=1.6:${PORTSDIR}/devel/p5-App-cpanminus \
	p5-CPAN-Meta>=2.120921:${PORTSDIR}/devel/p5-CPAN-Meta \
	p5-CPAN-Meta-Requirements>=2.121:${PORTSDIR}/devel/p5-CPAN-Meta-Requirements \
	p5-Capture-Tiny>0:${PORTSDIR}/devel/p5-Capture-Tiny \
	p5-Exception-Class>=1.32:${PORTSDIR}/devel/p5-Exception-Class \
	p5-JSON>=2.53:${PORTSDIR}/converters/p5-JSON \
	p5-Module-CPANfile>=0.9004:${PORTSDIR}/devel/p5-Module-CPANfile \
	p5-Module-Metadata>=1.000003:${PORTSDIR}/devel/p5-Module-Metadata \
	p5-Try-Tiny>=0.09:${PORTSDIR}/lang/p5-Try-Tiny \
	p5-local-lib>=1.008:${PORTSDIR}/devel/p5-local-lib
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	Carton.3 \
	Carton::Doc::Check.3 \
	Carton::Doc::Exec.3 \
	Carton::Doc::FAQ.3 \
	Carton::Doc::Install.3 \
	Carton::Doc::List.3 \
	Carton::Doc::Show.3 \
	Carton::Doc::Tree.3 \
	Carton::Doc::Version.3

NO_STAGE=	yes
.include <bsd.port.mk>
