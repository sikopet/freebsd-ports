# Created by: Gvozdikov Veniamin <g.veniamin@googlemail.com>
# $FreeBSD$

PORTNAME=	Net-CUPS
PORTVERSION=	0.61
PORTREVISION=	1
CATEGORIES=	print perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	vg@FreeBSD.org
COMMENT=	Interface to the CUPS API

BUILD_DEPENDS=	cups-config:${PORTSDIR}/print/cups-client
LIB_DEPENDS=	cupsimage.2:${PORTSDIR}/print/cups-image

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::CUPS.3 \
		Net::CUPS::Destination.3 \
		Net::CUPS::IPP.3 \
		Net::CUPS::PPD.3

NO_STAGE=	yes
.include <bsd.port.mk>
