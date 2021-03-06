# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Net-Radius-Server
PORTVERSION=	1.116
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Net
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Framework for RADIUS Servers

RUN_DEPENDS=	p5-Authen-PAM>=0:${PORTSDIR}/security/p5-Authen-PAM \
		p5-Class-Accessor>=0.27:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-IO-Prompt>=0:${PORTSDIR}/devel/p5-IO-Prompt \
		p5-Net-Radius>=1.52:${PORTSDIR}/net/p5-Net-Radius \
		p5-Net-Server>=0.94:${PORTSDIR}/net/p5-Net-Server \
		p5-NetAddr-IP>=4:${PORTSDIR}/net-mgmt/p5-NetAddr-IP \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap

USES=		perl5
USE_PERL5=	configure

MAN1=		nrsd.1 \
		nrsdbtoyaml.1 \
		pam-client.1 \
		rad-bulk-make.1 \
		rad-bulk.1 \
		rad-client.1
MAN3=		Net::Radius::Server.3 \
		Net::Radius::Server::Base.3 \
		Net::Radius::Server::DBStore.3 \
		Net::Radius::Server::Dump.3 \
		Net::Radius::Server::Match.3 \
		Net::Radius::Server::Match::LDAP.3 \
		Net::Radius::Server::Match::Simple.3 \
		Net::Radius::Server::NS.3 \
		Net::Radius::Server::PAM.3 \
		Net::Radius::Server::Rule.3 \
		Net::Radius::Server::Set.3 \
		Net::Radius::Server::Set::Proxy.3 \
		Net::Radius::Server::Set::Replace.3 \
		Net::Radius::Server::Set::Simple.3

NO_STAGE=	yes
.include <bsd.port.mk>
