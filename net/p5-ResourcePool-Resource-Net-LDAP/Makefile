# Created by: erwin@FreeBSD.org
# $FreeBSD$

PORTNAME=	ResourcePool-Resource-Net-LDAP
PORTVERSION=	1.0002
CATEGORIES=	net perl5
MASTER_SITES=	CPAN \
		http://www.fatalmind.com/projects/ResourcePool/
MASTER_SITE_SUBDIR=	CPAN:MWS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	ResourcePool wrapper for Net::LDAP

BUILD_DEPENDS=	p5-ResourcePool>=0:${PORTSDIR}/devel/p5-ResourcePool \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		ResourcePool::Resource::Net::LDAP.3 ResourcePool::Factory::Net::LDAP.3

NO_STAGE=	yes
.include <bsd.port.mk>
