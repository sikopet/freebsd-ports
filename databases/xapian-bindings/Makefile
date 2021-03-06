# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	xapian-bindings
PORTVERSION=	1.2.15
CATEGORIES=	databases
MASTER_SITES=	http://oligarchy.co.uk/xapian/${PORTVERSION}/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Bindings allowing Xapian to be used from various programming languages

LICENSE=	GPLv2

LIB_DEPENDS=	libxapian.so:${PORTSDIR}/databases/xapian-core

OPTIONS_DEFINE=	DOCS LUA PERL PHP PYTHON RUBY
OPTIONS_DEFAULT=PHP PYTHON RUBY

PORTSCOUT=	limitw:1,even

CONFIGURE_ARGS=	--datarootdir=${DATADIR} --docdir=${DOCSDIR} \
		--without-csharp --without-java --without-tcl
GNU_CONFIGURE=	yes

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MLUA}
CONFIGURE_ARGS+=--with-lua
CONFIGURE_ENV+=	LUA="${LUA_CMD}" LUA_INC="${LUA_INCDIR}" LUA_LIB="${LUA_MODLIBDIR}" LUA_SO=.so
USE_LUA=	5.1+
PLIST_SUB+=	LUA=""
.else
PLIST_SUB+=	LUA="@comment "
.endif

.if ${PORT_OPTIONS:MPERL}
CONFIGURE_ARGS+=--with-perl
CONFIGURE_ENV+=	PERL_LIB="${SITE_PERL}"
USES+=		perl5
PLIST_SUB+=	PERL=""
.else
PLIST_SUB+=	PERL="@comment "
.endif

.if ${PORT_OPTIONS:MPHP}
CONFIGURE_ARGS+=--with-php
CONFIGURE_ENV+=	PHP_CONFIG="${LOCALBASE}/bin/php-config"
USE_PHP=	yes
USE_PHP_BUILD=	yes
PLIST_SUB+=	PHP=""
.else
CONFIGURE_ARGS+=--without-php
PLIST_SUB+=	PHP="@comment "
.endif

.if ${PORT_OPTIONS:MPYTHON}
CONFIGURE_ARGS+=--with-python
CONFIGURE_ENV+=	PYTHON_LIB="${PYTHON_SITELIBDIR}"
USE_PYTHON=	yes
PLIST_SUB+=	PYTHON=""
.else
CONFIGURE_ARGS+=--without-python
PLIST_SUB+=	PYTHON="@comment "
.endif

.if ${PORT_OPTIONS:MRUBY}
CONFIGURE_ARGS+=--with-ruby
USE_RUBY=	yes
USE_RUBY_RDOC=	no
PLIST_SUB+=	RUBY=""
.else
CONFIGURE_ARGS+=--without-ruby
PLIST_SUB+=	RUBY="@comment "
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|-lstdc++||g' ${WRKSRC}/configure
# do not install rdoc
	@${REINPLACE_CMD} -e '/^install-data-am:/ s|install-data-local||' ${WRKSRC}/ruby/Makefile.in
.if !${PORT_OPTIONS:MDOCS}
	@${REINPLACE_CMD} -e '/^install-data-am:/ s|install-dist_docdataDATA install-dist_exampledataDATA ||' ${WRKSRC}/lua/Makefile.in ${WRKSRC}/php/Makefile.in ${WRKSRC}/python/Makefile.in
	@${REINPLACE_CMD} -e '/^install-data-am:/ s|install-dist_docdataDATA||; 799 s|install-dist_exampledataDATA ||' ${WRKSRC}/ruby/Makefile.in
.endif

.include <bsd.port.mk>
