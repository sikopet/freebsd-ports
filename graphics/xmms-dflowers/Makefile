# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD$

PORTNAME=	dflowers
PORTVERSION=	1.2.1
PORTREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	alepulver
PKGNAMEPREFIX=	xmms-
DISTNAME=	${PORTNAME}-${PORTVERSION:S/^/v/}

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	Dual Flowers visualization plugin for XMMS

LIB_DEPENDS=	xmms.4:${PORTSDIR}/multimedia/xmms

USE_GNOME=	gtk12

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|gcc|${CC}|; s|-m486||; s|-O2||; \
		s|-Wall|-Wall ${CFLAGS}|; \
		s|gtk-config|${GTK_CONFIG}|; \
		s|install lib|${INSTALL_PROGRAM} lib|; \
		s|install bg|${INSTALL_DATA} bg|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
