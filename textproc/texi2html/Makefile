# Created by: Ian Vaudrey <i.vaudrey@bigfoot.com>
# $FreeBSD$

PORTNAME=	texi2html
PORTVERSION=	5.0
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	textproc
MASTER_SITES=	SAVANNAH

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Texinfo to HTML converter

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=${PERL}
CONFIGURE_ARGS=	--disable-multiplatform
USES=		gmake perl5
USE_BZIP2=	yes

OPTIONS_DEFINE=	NLS DOCS

PROGRAM_PREFIX?=
PLIST_SUB=	PROGRAM_PREFIX=${PROGRAM_PREFIX} \
		TEXINFODIR=share/texinfo

.if !empty(PROGRAM_PREFIX)
CONFIGURE_ARGS=	--program-prefix="${PROGRAM_PREFIX}"
.endif

MAN1=		${PROGRAM_PREFIX}texi2html.1
INFO=		texi2html

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
CONFIGURE_ARGS+=--enable-nls --enable-translations
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls --disable-translations
PLIST_SUB+=	NLS="@comment "
.endif

pre-everything::
	@${ECHO} ""
	@${ECHO} "You can define the PROGRAM_PREFIX variable to change the name that"
	@${ECHO} "the texi2html program is installed as."
	@${ECHO} ""

post-patch:
	@${REINPLACE_CMD} -e 's/^translations.pl/_&/' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e '/^install-data/s|i18n|&/en.thl|' ${WRKSRC}/Makefile.in
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} -e 's| install-texinfohtmlDATA||g' ${WRKSRC}/doc/Makefile.in
.endif
	@${REINPLACE_CMD} -e '1s|/usr/bin/perl|${PERL}|' ${WRKSRC}/*.pl
	@${CHMOD} +x ${WRKSRC}/install-sh

.include <bsd.port.mk>
