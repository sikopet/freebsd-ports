# Created by: jkh
# $FreeBSD$

PORTNAME=	gmake
PORTVERSION=	3.82
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	make
DISTNAME=	make-${PORTVERSION}

# note: before committing to this port, contact portmgr to arrange for an
# experimental ports run.  Untested commits may be backed out at portmgr's
# discretion.
MAINTAINER=	autotools@FreeBSD.org
COMMENT=	GNU version of 'make' utility

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--program-prefix=g

OPTIONS_DEFINE=	NLS

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext iconv
CONFIGURE_ARGS+=${ICONV_CONFIGURE_ARG} \
		--with-libintl-prefix=${LOCALBASE}
PLIST_SUB=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB=	NLS="@comment "
.endif
CONFIGURE_ENV+=	MAKEINFO="makeinfo --no-split"

MAN1=		gmake.1
INFO=		make

.ifdef USE_GMAKE
.error You have `USE_GMAKE' variable defined either in environment or in make(1) arguments. Please undefine and try again.
.endif

post-patch:
	@${REINPLACE_CMD} -e '/no-print-dir/s/@itemx/@item/' \
		${WRKSRC}/doc/make.texi
	@${RM} ${WRKSRC}/doc/make.info*

# joerg@freebsd.org says our getloadavg() no longer requires setgid kmem

post-install:
	@${CHMOD} g-s ${PREFIX}/bin/gmake
	@chgrp ${BINGRP} ${PREFIX}/bin/gmake

.include <bsd.port.mk>
