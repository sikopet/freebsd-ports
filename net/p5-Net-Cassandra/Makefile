# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Net-Cassandra
PORTVERSION=	0.35
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Net
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Interface to Cassandra

RUN_DEPENDS=	p5-Moose>0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-StrictConstructor>0:${PORTSDIR}/devel/p5-MooseX-StrictConstructor

MAN3=		Net::Cassandra.3
USES=		perl5
USE_PERL5=	configure

NO_STAGE=	yes
.include <bsd.port.mk>
