# Created by: luigi
# $FreeBSD$

PORTNAME=	linux-ov511-kmod
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	multimedia kld
MASTER_SITES=	http://info.iet.unipi.it/~luigi/FreeBSD/linux/drivers/media/video/
DISTFILES=	ov511.c ov511.h
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Linux ov511 webcam driver

# Requires the linux emulation layer to be built
BUILD_DEPENDS=	/usr/share/mk/bsd.linux_kmod.mk:${PORTSDIR}/devel/linux-kmod-compat

NO_PACKAGE=	depends on kernel sources

# This is our Makefile to be used for build/install.
MAKEFILE=	Makefile.kld
ALL_TARGET=	depend all

# we simply copy the sources from the original site
NO_STAGE=	yes
do-extract:
	@${MKDIR} ${WRKSRC}
	( cd ${_DISTDIR} && ${CP} ${DISTFILES} ${WRKSRC} )

post-extract:
	@${CP} ${FILESDIR}/${MAKEFILE} ${WRKSRC}

.include <bsd.port.mk>
