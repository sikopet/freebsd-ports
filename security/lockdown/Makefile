# Created by: Daniel Blankensteiner <db@TruNet.dk>
# $FreeBSD$

PORTNAME=	lockdown
PORTVERSION=	2.0.0
CATEGORIES=	security
MASTER_SITES=	http://lockdown.trunet.dk/ \
		http://lockdown.loproc.dk/

MAINTAINER=	db@TruNet.dk
COMMENT=	Hardening script for FreeBSD

MAN1=		editfile.1 editfstab.1 editkernel.1 editlogin.1 editttys.1

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${ARCH} == amd64
CFLAGS+=	-fPIC
.endif

USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}/lockdown

do-install:
	${INSTALL_DATA} ${WRKSRC}/cppe/src/libcppe.so ${PREFIX}/lib/libcppe.so
.for i in editfile editfstab editkernel editlogin editttys
	${INSTALL_PROGRAM} ${WRKSRC}/edittools/${i}/src/${i} ${PREFIX}/bin/${i}
	${INSTALL_MAN} ${WRKSRC}/edittools/${i}/doc/${i}.1 ${PREFIX}/man/man1/${i}.1
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/lockdown ${PREFIX}/bin/lockdown

.include <bsd.port.post.mk>
