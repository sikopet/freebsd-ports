# Created by: John Polstra <jdp@polstra.com>
# $FreeBSD$

PORTNAME=	cfs
DISTVERSION=	1.5.0.beta
CATEGORIES=	security
MASTER_SITES=	http://www.bayofrum.net/dist/${PORTNAME}/

MAINTAINER=	crees@FreeBSD.org
COMMENT=	A cryptographic file system implemented as a user-space NFS server

ALL_TARGET=	cfs
MAKE_ARGS=	CC=cc
MAN1=		cattach.1 cdetach.1 cmkdir.1 cpasswd.1 cfssh.1
MAN8=		ccat.8 cfsd.8 cname.8

CFSD_BOOTSTRAP=	${PREFIX}/cfsd-bootstrap
USE_RC_SUBR=	cfsd
SUB_FILES=	pkg-message
SUB_LIST=	CFSD_BOOTSTRAP=${CFSD_BOOTSTRAP}
PLIST_SUB=	CFSD_BOOTSTRAP=${CFSD_BOOTSTRAP}

NO_STAGE=	yes
post-patch:
	${REINPLACE_CMD} 's/^\.TH SSH/.TH CFSSH/' ${WRKSRC}/cfssh.1

do-install:
	@cd ${WRKSRC}; \
	    ${INSTALL_PROGRAM} ccat cfsd cname ${PREFIX}/sbin; \
	    ${INSTALL_PROGRAM} cattach cdetach cmkdir cpasswd ${PREFIX}/bin; \
	    ${INSTALL_SCRIPT} cfssh ${PREFIX}/bin/cfssh; \
	    ${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1; \
	    ${INSTALL_MAN} ${MAN8} ${PREFIX}/man/man8; \
	    ${MKDIR} ${PREFIX}/share/doc/cfs; \
	    ${INSTALL_DATA} README.install notes.ms ${PREFIX}/share/doc/cfs
	${INSTALL} -d ${_BINOWNGRP} -m 0 ${CFSD_BOOTSTRAP}
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
