# $FreeBSD$

PORTNAME=	powerdns
PORTVERSION=	3.3
PORTREVISION?=	1
CATEGORIES=	dns ipv6
MASTER_SITES=	http://downloads.powerdns.com/releases/
DISTNAME=	pdns-${PORTVERSION}

MAINTAINER=	tremere@cainites.net
COMMENT=	Advanced DNS server with multiple backends including SQL

LICENSE=	GPLv2

LIB_DEPENDS=	libboost_serialization.so:${PORTSDIR}/devel/boost-libs

USE_LUA=	5.1
LUA_COMPS=	lua

CONFLICTS=	powerdns-devel-[2-3].[0-9]*

USES=		pkgconfig gmake
USE_SUBMAKE=	YES
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	YES
CXXFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-modules="" \
		--with-dynmodules="pipe ${CONFIGURE_MODULES}" \
		--sysconfdir="${PREFIX}/etc/pdns" \
		--with-boost="${LOCALBASE}"
SCRIPTS_ENV=	WRKDIRPREFIX="${WRKDIRPREFIX}" \
		CURDIR2="${.CURDIR}" \
		MKDIR="${MKDIR}" \
		DISTNAME="${DISTNAME}" \
		POWERDNS_OPTIONS="${POWERDNS_OPTIONS}"

SUB_FILES=	pkg-message

OPTIONS_DEFINE=	PGSQL PGSQL_LOCAL MYSQL MYSQL_LOCAL \
		OPENDBX OPENLDAP OPENLDAP_LOCAL GEO POLARSSL TOOLS
OPTIONS_MULTI=	DNSSEC
OPTIONS_MULTI_DNSSEC=	BOTAN110 CRYPTOPP

OPTIONS_RADIO=	SQLITE
OPTIONS_RADIO_SQLITE=	SQLITE2 SQLITE3
SQLITE2_DESC=	SQLite 2 database support

PGSQL_DESC=		PostgreSQL backend
PGSQL_LOCAL_DESC=	RUN_DEPEND on PostgreSQL server
MYSQL_DESC=		MySQL backend
MYSQL_LOCAL_DESC=	RUN_DEPEND on MySQL server
OPENDBX_DESC=		OpenDBX backend
OPENLDAP_DESC=		OpenLDAP backend
OPENLDAP_LOCAL_DESC=	RUN_DEPEND on OpenLDAP server
GEO_DESC=		Geo backend
DNSSEC_DESC=		Extra DNSSEC options
BOTAN110_DESC=		Faster signing + ECDSA & GOST algorithms
CRYPTOPP_DESC=		ECDSA algorithms
POLARSSL_DESC=		Use embedded PolarSSL
TOOLS_DESC=		Build extra tools

OPTIONS_DEFAULT=	PGSQL DNSSEC BOTAN110 POLARSSL

.include <bsd.port.options.mk>

USE_RC_SUBR+=	pdns

.if ${PORT_OPTIONS:MTOOLS}
CONFIGURE_ARGS+=	--enable-tools
PLIST_SUB+=		WITHTOOLS=""
.else
PLIST_SUB+=		WITHTOOLS="@comment "
.endif

.if ${PORT_OPTIONS:MGEO}
CONFIGURE_MODULES+=	"geo"
PLIST_SUB+=		WITHGEO=""
.else
PLIST_SUB+=		WITHGEO="@comment "
.endif

.if ${PORT_OPTIONS:MPGSQL}
USE_PGSQL?=		YES
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE}
CONFIGURE_MODULES+=	"gpgsql"
PLIST_SUB+=		WITHPGSQL=""
.else
CONFIGURE_ARGS+=	--without-pgsql
PLIST_SUB+=		WITHPGSQL="@comment "
.endif

.if ${PORT_OPTIONS:MMYSQL}
USE_MYSQL?=		YES
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
CONFIGURE_MODULES+=	"gmysql"
PLIST_SUB+=		WITHMYSQL=""
.else
CONFIGURE_ARGS+=	--without-mysql
PLIST_SUB+=		WITHMYSQL="@comment "
.endif

.if ${PORT_OPTIONS:MOPENDBX} || ${PORT_OPTIONS:MPGSQL}
.	if ${PORT_OPTIONS:MPGSQL_LOCAL}
USE_PGSQL=		server
SUB_LIST+=	PGSQL=postgresql
.	endif
.else
SUB_LIST+=	PGSQL=
.endif
.if ${PORT_OPTIONS:MOPENDBX} || ${PORT_OPTIONS:MMYSQL}
.	if ${PORT_OPTIONS:MMYSQL_LOCAL}
USE_MYSQL=	server
SUB_LIST+=	MYSQL=mysql
.	endif
.else
SUB_LIST+=	MYSQL=
.endif

.if ${PORT_OPTIONS:MOPENLDAP}
USE_OPENLDAP?=		YES
CONFIGURE_MODULES+=	"ldap"
CXXFLAGS+=		-L${LOCALBASE}/lib -DLDAP_DEPRECATED=1
PLIST_SUB+=		WITHOPENLDAP=""
.	if ${PORT_OPTIONS:MOPENLDAP_LOCAL}
RUN_DEPENDS+=	openldap-server>=0:${PORTSDIR}/net/openldap${OPENLDAP_VER}-server
SUB_LIST+=	SLAPD=slapd
.	else
SUB_LIST+=	SLAPD=
.	endif
.else
PLIST_SUB+=		WITHOPENLDAP="@comment "
SUB_LIST+=		SLAPD=
.endif

.if ${PORT_OPTIONS:MSQLITE}
USE_SQLITE?=		2
CONFIGURE_MODULES+=	"gsqlite"
PLIST_SUB+=		WITHSQLITE=""
.else
PLIST_SUB+=		WITHSQLITE="@comment "
.endif

.if ${PORT_OPTIONS:MSQLITE3}
USE_SQLITE?=		3
CONFIGURE_MODULES+=	"gsqlite3"
PLIST_SUB+=		WITHSQLITE3=""
.else
PLIST_SUB+=		WITHSQLITE3="@comment "
.endif

.if ${PORT_OPTIONS:MOPENDBX}
LIB_DEPENDS+=		libopendbx.so:${PORTSDIR}/databases/opendbx
CONFIGURE_MODULES+=	"opendbx"
PLIST_SUB+=		WITHOPENDBX=""
CXXFLAGS+=		-L${LOCALBASE}/lib
.else
PLIST_SUB+=		WITHOPENDBX="@comment "
.endif

.if ${PORT_OPTIONS:MPOLARSSL}
CONFIGURE_ARGS+=	--without-system-polarssl
.else
LIB_DEPENDS+=		libpolarssl.so:${PORTSDIR}/security/polarssl
.endif

.if ${PORT_OPTIONS:MBOTAN110}
CONFIGURE_ARGS+=	--enable-botan1.10
LIB_DEPENDS+=		libbotan-1.10.so:${PORTSDIR}/security/botan110
.endif

.if ${PORT_OPTIONS:MCRYPTOPP}
.if exists(${LOCALBASE}/lib/libcryptopp.so)
LIB_DEPENDS+=		libcryptopp.so:${PORTSDIR}/security/cryptopp
.else
BUILD_DEPENDS+=		${LOCALBASE}/lib/libcryptopp.a:${PORTSDIR}/security/cryptopp
.endif
CONFIGURE_ARGS+=	--enable-cryptopp
.endif

post-patch:
.if ${PORT_OPTIONS:MOPENLDAP}
	${REINPLACE_CMD} -e 's;-I. ;-I. -I${LOCALBASE}/include ;' \
		-e 's;la_LDFLAGS =;la_LDFLAGS = -L${LOCALBASE}/lib;' \
		${WRKSRC}/modules/ldapbackend/Makefile.in
	${REINPLACE_CMD} -e 's;@LIBDL@;@LIBDL@ -L${LOCALBASE}/lib;' \
		-e 's;@modulelibs@;@modulelibs@ -llber;' \
		${WRKSRC}/pdns/Makefile.in
.endif
.if ${PORT_OPTIONS:MPGSQL}
	@${REINPLACE_CMD} -E -e 's;(PGSQL_inc_check="\$$withval/include/pgsql)";\1 \$$withval/include";' \
		${WRKSRC}/configure
.endif

post-install:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
.for i in pdns.conf
	${INSTALL_DATA} ${FILESDIR}/$i ${STAGEDIR}${EXAMPLESDIR}/
.endfor
.for j in libgpgsqlbackend.so libgmysqlbackend.so libgsqlitebackend.so \
	libgsqlite3backend.so libldapbackend.so libopendbxbackend.so \
	libgeobackend.so libpipebackend.so
	@if ([ -f ${STAGEDIR}${PREFIX}/lib/$j ] && [ ! -f ${STAGEDIR}${PREFIX}/lib/$j.0 ]); then \
		${LN} -sf ${PREFIX}/lib/$j ${STAGEDIR}${PREFIX}/lib/$j.0; \
	fi
.endfor

.include <bsd.port.mk>
