# $FreeBSD$

PORTNAME=	HTML-RewriteAttributes
PORTVERSION=	0.05
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Simple yet powerful HTML attribute rewriting

BUILD_DEPENDS=	p5-HTML-Parser>0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-HTML-Tagset>0:${PORTSDIR}/www/p5-HTML-Tagset \
		p5-URI>0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	HTML::RewriteAttributes::Resources.3 \
  		HTML::RewriteAttributes::Links.3 \
		HTML::RewriteAttributes.3

USES=		perl5
USE_PERL5=	configure

PLIST_FILES=	%%SITE_PERL%%/HTML/RewriteAttributes.pm \
			%%SITE_PERL%%/HTML/RewriteAttributes/Resources.pm \
			%%SITE_PERL%%/HTML/RewriteAttributes/Links.pm \
			%%SITE_PERL%%/%%PERL_ARCH%%/auto/HTML/RewriteAttributes/.packlist

PLIST_DIRSTRY=	%%SITE_PERL%%/HTML/RewriteAttributes \
			%%SITE_PERL%%/HTML \
			%%SITE_PERL%%/%%PERL_ARCH%%/auto/HTML/RewriteAttributes \
			%%SITE_PERL%%/%%PERL_ARCH%%/auto/HTML

NO_STAGE=	yes
.include <bsd.port.mk>
