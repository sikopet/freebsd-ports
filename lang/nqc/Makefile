# Created by: kbyanc
# $FreeBSD$

PORTNAME=	nqc
PORTVERSION=	3.1.r6
CATEGORIES=	lang
MASTER_SITES=	http://bricxcc.sourceforge.net/nqc/release/ \
		ftp://ftp2.za.freebsd.org/pub/nqc/
EXTRACT_SUFX=	.tgz

MAINTAINER=	jhay@FreeBSD.org
COMMENT=	A compiler for writing programs for the Lego RCX

USE_GMAKE=	yes
NO_WRKSUBDIR=	yes

MAN1=		nqc.1
PLIST_FILES=	bin/nqc

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/nqc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nqc-man-2.1r1-0.man ${PREFIX}/man/man1/nqc.1

.include <bsd.port.pre.mk>

.if ${OSVERSION} >= 800064
USE_DOS2UNIX=	rcxlib/RCX_USBTowerPipe_fbsd.cpp
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-rcxlib-RCX_USBTowerPipe_fbsd.cpp
.endif

.include <bsd.port.post.mk>
