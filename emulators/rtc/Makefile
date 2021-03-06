# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	rtc
PORTVERSION=	2004.02.24.1
PORTREVISION=	8
CATEGORIES=	emulators linux kld
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Kernel module which provides /dev/rtc device support

WRKSRC=		${WRKDIR}/files

SSP_UNSAFE=	kernel module does not support ssp
NO_FETCH=	yes
USE_LINUX=	yes	# because of ${DEVDIR}

KMODDIR=	${PREFIX}/modules

CDEV_MAJOR=	202
DEVDIR=		${LINUXBASE}/dev

STARTUP=	rtc.sh
MAKE_ARGS=	KMODDIR="${KMODDIR}" CDEV_MAJOR="${CDEV_MAJOR}"
PLIST_SUB=	DEVDIR="${DEVDIR}" CDEV_MAJOR="${CDEV_MAJOR}" \
		RTC_H_DIR="${RTC_H_DIR}"

NO_STAGE=	yes
.include <bsd.port.pre.mk>

SRC_BASE?=	/usr/src

.if !exists(${SRC_BASE}/sys/Makefile)
IGNORE=		needs kernel source files
.endif

do-extract:
	@${MKDIR} ${WRKSRC}
	@${SED}	-e 's,@@PREFIX@@,${PREFIX},' \
		${FILESDIR}/${STARTUP} > ${WRKDIR}/${STARTUP}
	@cd ${FILESDIR} && ${CP} Makefile *.[ch] ${WRKSRC}/

pre-install:
	${MKDIR} ${KMODDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/rtc.h ${PREFIX}/include/
	${MKDIR} ${PREFIX}/share/examples/rtc
	${INSTALL_DATA} ${WRKSRC}/test.c ${PREFIX}/share/examples/rtc/
	@${ECHO} "Installing ${PREFIX}/etc/rc.d/${STARTUP} startup file.";
	${INSTALL_SCRIPT} ${WRKDIR}/${STARTUP} ${PREFIX}/etc/rc.d/

.include <bsd.port.post.mk>
