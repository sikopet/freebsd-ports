# Created by: David Thiel <lx@redundancy.redundancy.org>
# $FreeBSD$

PORTNAME=	ucspi-ipc
PORTVERSION=	0.67
CATEGORIES=	sysutils
MASTER_SITES=	http://www.superscript.com/ucspi-ipc/

MAINTAINER=	lx@redundancy.redundancy.org
COMMENT=	UCSPI tools for building local-domain client-server applications

USES=		perl5

DISABLE_SIZE=	yes

RESTRICTED=	Non-explicit licensing terms

DOCS=		CHANGES

WRKSRC=		${WRKDIR}/host/superscript.com/net/${DISTNAME}

NO_STAGE=	yes
do-configure:
	${ECHO_CMD} "${CC} ${CFLAGS}" > ${WRKSRC}/src/conf-cc

do-build:
	cd ${WRKSRC} && package/compile

do-install:
.for x in ipccat ipcconnect ipcdo ipcrun
	${INSTALL_SCRIPT} ${WRKSRC}/command/${x} ${PREFIX}/bin
.endfor
.for x in ipcclient ipccommand ipcconnect-io ipcexec ipcexec-config \
	ipcexecrules ipcexecrulescheck ipcperl ipcrules ipcrulescheck ipcserver
	${INSTALL_PROGRAM} ${WRKSRC}/command/${x} ${PREFIX}/bin
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/src && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
