# Created by: Freddie Cash <fjwcash@gmail.com>
# $FreeBSD$

PORTNAME=	dansguardian
PORTVERSION=	2.12.0.3
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	SF/dansguardian

MAINTAINER=	garga@FreeBSD.org
COMMENT=	A fast, feature-rich web content filter for Squid proxy servers

RUN_DEPENDS=	${LOCALBASE}/sbin/squid:${PORTSDIR}/www/squid
LIB_DEPENDS+=	libpcre.so:${PORTSDIR}/devel/pcre

USE_RC_SUBR=	dansguardian
USES=		iconv pkgconfig
USE_BZIP2=	yes

CONFLICTS=	dansguardian-2.10.*
LATEST_LINK=	dansguardian-devel

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-logdir=/var/log \
		--with-piddir=/var/run \
		${ICONV_CONFIGURE_BASE} \
		--enable-fancydm

MAN8=		dansguardian.8

PORTDOCS=	*

OPTIONS_DEFINE=	APACHE TRICKLE CLISCAN CLAMD ICAP KAV NTLM EMAIL DEBUG SSL DOCS
OPTIONS_DEFAULT=APACHE TRICKLE DOCS

APACHE_DESC=	Enable Apache support for access denied page
TRICKLE_DESC=	Enable the trickle download manager
CLISCAN_DESC=	Enable support for CLI content scanners
CLAMD_DESC=	Enable ClamAV daemon support (clamd)
ICAP_DESC=	Enable ICAP AV content scanner support (testing)
KAV_DESC=	Enable Kaspersky AV support (testing)
EMAIL_DESC=	Enable e-mail reporting support

DG_URL=		http://dansguardian.org/index.php?page=copyright2
CONFDIR=	${PREFIX}/etc/dansguardian

RESTRICTED=	Redistribution and commercial download is restricted.  Check ${DG_URL} for more info

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MAPACHE}
USE_APACHE_RUN=	22+
.endif

.if ${PORT_OPTIONS:MTRICKLE}
CONFIGURE+=		--enable-trickledm
PLIST_SUB+=		TRICKLECONF=""
.else
PLIST_SUB+=		TRICKLECONF="@comment "
.endif

.if ${PORT_OPTIONS:MCLISCAN}
CONFIGURE_ARGS+=	--enable-commandline
PLIST_SUB+=		CLISCANCONF=""
.else
PLIST_SUB+=		CLISCANCONF="@comment "
.endif

.if ${PORT_OPTIONS:MCLAMD}
CONFIGURE_ARGS+=	--enable-clamd
RUN_DEPENDS+=		${LOCALBASE}/sbin/clamd:${PORTSDIR}/security/clamav
PLIST_SUB+=		CLAMDCONF=""
.else
PLIST_SUB+=		CLAMDCONF="@comment "
.endif

.if ${PORT_OPTIONS:MICAP}
CONFIGURE_ARGS+=	--enable-icap
PLIST_SUB+=		ICAPCONF=""
.else
PLIST_SUB+=		ICAPCONF="@comment "
.endif

.if ${PORT_OPTIONS:MKAV}
CONFIGURE_ARGS+=	--enable-kavd
PLIST_SUB+=		KAVDCONF=""
.else
PLIST_SUB+=		KAVDCONF="@comment "
.endif

.if ${PORT_OPTIONS:MCLAMD} || ${PORT_OPTIONS:MICAP} || \
    ${PORT_OPTIONS:MKAV} || ${PORT_OPTIONS:MCLISCAN}
PLIST_SUB+=		SCANNERS=""
.else
PLIST_SUB+=		SCANNERS="@comment "
.endif

.if ${PORT_OPTIONS:MNTLM}
CONFIGURE_ARGS+=	--enable-ntlm
PLIST_SUB+=		NTLMCONF=""
.else
PLIST_SUB+=		NTLMCONF="@comment "
.endif

.if ${PORT_OPTIONS:MEMAIL}
CONFIGURE_ARGS+=	--enable-email
PLIST_SUB+=		EMAILCONF=""
.else
PLIST_SUB+=		EMAILCONF="@comment "
.endif

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=	--with-dgdebug
.endif

post-patch:
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} -e '/install-data-am/ s|install-dist_docDATA||' \
		${WRKSRC}/doc/Makefile.in
.endif
.if ${PORT_OPTIONS:MSSL}
	@${REINPLACE_CMD} -e 's|ifdef __SSLCERT|ifdef __SSLCERT_ERROR_AUTH|' \
		${WRKSRC}/src/Auth.cpp
LDFLAGS+=	-lssl -lcrypto
CFLAGS+=	-D__SSLMITM -D__SSLCERT
.endif

post-install:
# Display post-install message
	@${CAT} pkg-message

.include <bsd.port.post.mk>
