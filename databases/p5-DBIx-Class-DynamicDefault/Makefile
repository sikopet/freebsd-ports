# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD$

PORTNAME=	DBIx-Class-DynamicDefault
PORTVERSION=	0.04
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Automatically set and update fields

BUILD_DEPENDS=	p5-DBIx-Class>=0.08127:${PORTSDIR}/databases/p5-DBIx-Class
RUN_DEPENDS=	p5-DBIx-Class>=0.08127:${PORTSDIR}/databases/p5-DBIx-Class

TEST_DEPENDS=	p5-DBICx-TestDatabase>=0:${PORTSDIR}/databases/p5-DBICx-TestDatabase

USES=		perl5
USE_PERL5=	configure

MAN3=	DBIx::Class::DynamicDefault.3

NO_STAGE=	yes
.include <bsd.port.mk>
