# Created by: Kris Kennaway <kris@FreeBSD.org>
# $FreeBSD$

PORTNAME=	freebsd-uucp
PORTVERSION=	1.07.3
PORTREVISION=	1
CATEGORIES=	net comms ipv6
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=dinoex
PKGNAMESUFFIX?=	${PAM_SUFFIX}${PKGNAMESUFFIX2}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	FreeBSD-modified Taylor UUCP (unix-to-unix copy program)

NO_STAGE=	yes

USE_BZIP2=	yes
MANCOMPRESSED=	yes

MAN1=	cu.1 uuconv.1 uucp.1 uulog.1 uuname.1 uupick.1 uustat.1 \
	uuto.1 uux.1
MAN8=	uuchk.8 uucico.8 uusched.8 uuxqt.8 uucpd.8
INFO=	uucp
VARLOG=	uucp/common_sources/policy.h uucp/uucico/uucico.8 \
	uucp/uucp/uucp.1 uucp/uux/uux.1 uucp/uuxqt/uuxqt.8
POLICY=	uucp/common_sources/policy.h
FIXME=	etc/periodic/daily/340.uucp etc/periodic/daily/410.status-uucp \
	etc/periodic/weekly/300.uucp
BPKGNAME=	base-uucp-1.06.1

# fix errros for -std=iso9899:1999 in FreeBSD 5.1
MAKE_ENV+=	CSTD=gnu99

.include <bsd.port.pre.mk>

.if defined(WITH_PAM)
PAM_SUFFIX=	-pam
MAKE_ENV+=	WITH_PAM=${WITH_PAM}
CONFLICTS?=	freebsd-uucp-1.*
.else
CONFLICTS?=	freebsd-uucp-pam-1.*
.endif

.if defined(WITH_UUCP_ENCRYPTED_PASSWORDS)
MAKE_ENV+=	WITH_ENCRYPTED_PASSWORDS=1
.endif

.if ${OSVERSION} > 1000000
BUILD_DEPENDS=	cvs:${PORTSDIR}/devel/cvs
.endif

post-extract:
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} \
		${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} extract)
	${REINPLACE_CMD} -e 's|doc ||' \
		${WRKSRC}/uucp/Makefile

do-configure:
.for i in ${FIXME}
	${REINPLACE_CMD} -e "s=/usr/local/=${PREFIX}/=" \
		${WRKSRC}/${i}
.endfor
.if defined(WITH_UUCP_VAR_LOG) || defined(UUCP_WITH_VAR_LOG)
.for i in ${VARLOG}
	${REINPLACE_CMD} \
		-e "s=/var/spool/uucp/Log=/var/log/uucp/Log=" \
		-e "s=/var/spool/uucp/Debug=/var/log/uucp/Debug=" \
		-e "s=/var/spool/uucp/Stats=/var/log/uucp/Stats=" \
		${WRKSRC}/${i}
.endfor
	@${ECHO_CMD} "   .." >> ${WRKSRC}/uucp.mtree
	@${ECHO_CMD} "/set uname=root gname=wheel mode=0755" \
		>> ${WRKSRC}/uucp.mtree
	@${ECHO_CMD} "   log" >> ${WRKSRC}/uucp.mtree
	@${ECHO_CMD} "/set uname=uucp gname=uucp mode=0775" \
		>> ${WRKSRC}/uucp.mtree
	@${ECHO_CMD} "       uucp" >> ${WRKSRC}/uucp.mtree
	@${ECHO_CMD} "       .." >> ${WRKSRC}/uucp.mtree
.endif
.if defined(WITH_UUCP_ENCRYPTED_PASSWORDS)
	${REINPLACE_CMD} \
		-e "s=HAVE_ENCRYPTED_PASSWORDS.*=HAVE_ENCRYPTED_PASSWORDS 1=" \
		${WRKSRC}/${POLICY}
.endif
	@(cd ${CONFIGURE_WRKSRC}; ${SETENV} ${MAKE_ENV} \
		${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} configure)

post-install:
	-${MKDIR} ${PREFIX}/info
	${INSTALL_DATA} ${WRKSRC}/uucp/doc/uucp.info ${PREFIX}/info/
	@${CHOWN} uucp:uucp ${PREFIX}/etc/uucp
	@${CHMOD} 750 ${PREFIX}/etc/uucp
	@${ECHO_CMD} "updating ${ROOTDIR}/etc/services"
	@${CP} ${ROOTDIR}/etc/services ${ROOTDIR}/etc/services.bak
	@(grep -v ^suucp ${ROOTDIR}/etc/services.bak; \
	${ECHO_CMD} "suucp           4031/tcp   #UUCP over SSL"; \
	${ECHO_CMD} "suucp           4031/udp   #UUCP over SSL" ) \
		> ${ROOTDIR}/etc/services
.if !defined(BATCH)
	@if test "$$(pw usershow uucp)" != "uucp:*:66:66::0:0:UUCP pseudo-user:/var/spool/uucppublic:${PREFIX}/libexec/uucp/uucico"; then \
	pw usermod uucp -s ${PREFIX}/libexec/uucp/uucico; fi
	@pw usershow uucp
.endif
	@${ECHO_MSG} "Use the 'make upgrade' command to copy your old configuration"
	@${ECHO_MSG} "files from /etc/uucp to the new location in ${PREFIX}/etc/uucp"
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
.if defined(WITH_PAM)
	@${ECHO_MSG} "Add this lines to your pam.conf:"
	@${CAT} ${FILESDIR}/uucp-pam.conf
.endif
.if exists(/usr/sbin/uuchk) && !defined(PACKAGE_BUILDING)
	${MAKE} base-package
.endif

upgrade:
	@${ECHO_MSG} "Copying old configuration files from /etc/uucp to ${PREFIX}/etc/uucp"
	@${CP} -rp /etc/uucp ${PREFIX}/etc/uucp

base-package:
	@if [ ! -d ${PKG_DBDIR}/${BPKGNAME} ]; then \
		${ECHO_MSG} "===>   Registering installation for ${BPKGNAME}"; \
		${MKDIR} ${PKG_DBDIR}/${BPKGNAME}; \
		${PKG_CMD} -v -c ${FILESDIR}/pkg-comment \
			-d ${FILESDIR}/pkg-descr -f ${FILESDIR}/pkg-plist \
			-p / -o ${PKGORIGIN} -O ${BPKGNAME} \
			> ${PKG_DBDIR}/${BPKGNAME}/+CONTENTS; \
		${CP} ${FILESDIR}/pkg-descr ${PKG_DBDIR}/${BPKGNAME}/+DESC; \
		${CP} ${FILESDIR}/pkg-comment \
			${PKG_DBDIR}/${BPKGNAME}/+COMMENT; \
	fi

.include <bsd.port.post.mk>
