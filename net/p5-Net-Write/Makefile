# Created by: Christopher Boumenot <boumenot@gmail.com>
# $FreeBSD$

PORTNAME=	Net-Write
PORTVERSION=	1.05
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	eg@fbsd.lt
COMMENT=	An interface to open and send raw frames to the network

BUILD_DEPENDS=	p5-Class-Gomor>=1.00:${PORTSDIR}/devel/p5-Class-Gomor \
		p5-Socket6>=0.19:${PORTSDIR}/net/p5-Socket6 \
		p5-Net-Pcap>=0.14:${PORTSDIR}/net/p5-Net-Pcap
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Net::Write.3 \
	Net::Write::Layer.3 \
	Net::Write::Layer2.3 \
	Net::Write::Layer3.3 \
	Net::Write::Layer4.3

NO_STAGE=	yes
.include <bsd.port.mk>
