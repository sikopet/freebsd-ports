# Created by: Peter Lai <cowbert@gmail.com>
# $FreeBSD$

PORTNAME=	mod_rivet
PORTVERSION=	2.1.2
CATEGORIES=	www tcl
MASTER_SITES=		${MASTER_SITE_APACHE}
MASTER_SITE_SUBDIR=	tcl/rivet
DISTNAME=		rivet-${PORTVERSION}

MAINTAINER=	cowbert@gmail.com
COMMENT=	Embeds a Tcl interpreter in the Apache server

LICENSE=	AL2

LIB_DEPENDS=	libitcl.so:${PORTSDIR}/lang/itcl

USE_APACHE=	22+
USE_TCL=	85+
USE_LDCONFIG=	${PREFIX}/lib/rivet

USES=		gmake
GNU_CONFIGURE=	yes

INSTALL_TARGET=	install install-packages

NO_STAGE=	yes
.include <bsd.port.pre.mk>

CONFIGURE_ARGS+=	--with-apache-version=2 \
			--prefix=${PREFIX} --with-apxs=${APXS} \
			--with-tcl=${TCL_LIBDIR} --with-tclsh=${TCLSH} \
			--with-rivet-target-dir=${PREFIX}/lib/rivet

post-patch:
	${REINPLACE_CMD}  -e 's|`$${apxs_found} -q LIBEXECDIR`|${PREFIX}/${APACHEMODDIR}|g' \
	   ${WRKSRC}/configure.ac ${WRKSRC}/configure

post-install:
	@${ECHO_MSG} ""
	@${ECHO_MSG} "===================================================="
	@${ECHO_MSG} "Remember to modify your apache configuration file"
	@${ECHO_MSG} "to load mod_rivet and set the appropriate handlers:"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "LoadModule rivet_module ${APACHEMODDIR}/mod_rivet.so"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "AddType application/x-httpd-rivet .rvt"
	@${ECHO_MSG} "AddType application/x-rivet-tcl .tcl"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "Visit http://tcl.apache.org/rivet/ for documentation"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "===================================================="

.include <bsd.port.post.mk>
