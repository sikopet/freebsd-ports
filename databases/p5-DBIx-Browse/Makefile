# Created by: Philip M. Gollucci <philip@p6m7g8.com>
# $FreeBSD$

PORTNAME=	DBIx-Browse
PORTVERSION=	2.09
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DBIx::Browse - Perl extension to browse tables

BUILD_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI
RUN_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI

USES=		perl5
USE_PERL5=	configure

MAN3=		DBIx::Browse::CGI.3 \
		DBIx::Browse.3

NO_STAGE=	yes
.include <bsd.port.mk>
