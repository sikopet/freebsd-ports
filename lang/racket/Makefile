# Created by: Joseph Koshy <jkoshy@FreeBSD.org>
# $FreeBSD$

PORTNAME=	racket
PORTVERSION=	5.3.6
CATEGORIES=	lang scheme
MASTER_SITES=	http://download.racket-lang.org/installers/${PORTVERSION}/${PORTNAME}/ \
		http://www.eecs.northwestern.edu/racket/${PORTVERSION}/${PORTNAME}/ \
		http://www.cs.utah.edu/plt/installers/${PORTVERSION}/${PORTNAME}/ \
		http://mirror.informatik.uni-tuebingen.de/mirror/racket/${PORTVERSION}/${PORTNAME}/ \
		ftp://infogroep.be/pub/racket/installers/${PORTVERSION}/${PORTNAME}/ \
		http://russell.cs.bilgi.edu.tr/racket-installers/${PORTVERSION}/${PORTNAME}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src-unix
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PORTNAME}/${PORTVERSION}

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	An interactive, integrated, graphical Scheme programming environment

MAKE_JOBS_UNSAFE=yes

OPTIONS_DEFINE=		RACKET_PLACES
RACKET_PLACES_DESC=	Enable Places
OPTIONS_DEFAULT=	RACKET_PLACES

CONFLICTS=	racket-textual-[0-9]*

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --enable-pthread \
		--enable-lt=${LIBTOOL}
CONFIGURE_SCRIPT=../configure

.include <bsd.port.options.mk>

.if defined(WITHOUT_X11)
IGNORE=		requires X11; use lang/racket-textual instead
.endif

.if ${ARCH} == "i386"
MANUAL_PACKAGE_BUILD=	i386 requires kern.maxdsiz="640M" to build
.endif

LIB_DEPENDS+=	ffi:${PORTSDIR}/devel/libffi		\
		cairo:${PORTSDIR}/graphics/cairo	\
		jpeg:${PORTSDIR}/graphics/jpeg	\
		png15:${PORTSDIR}/graphics/png

.if ${PORT_OPTIONS:MRACKET_PLACES}
CONFIGURE_ARGS+=	--enable-places
.else
CONFIGURE_ARGS+=	--disable-places
.endif

# Force the "configure" script to look in $LOCALBASE for -lpng and -ljpeg
LDFLAGS+=	-L${LOCALBASE}/lib
CPPFLAGS+=	-I${LOCALBASE}/include

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src/build
USES+=		iconv
USE_AUTOTOOLS=	libtool:env
USE_GNOME=	pango
USE_LDCONFIG=	yes
USE_SQLITE=	3

ONLY_FOR_ARCHS=	i386 amd64

RACKET_PLIST=	${WRKDIR}/pkg-plist

.include <bsd.port.pre.mk>

.if ${ARCH} == "amd64"
CPPFLAGS+=	-DLONG64
.endif

pre-patch:
	@${MKDIR} ${WRKSRC}

post-patch:
	@${FIND} ${WRKSRC} -name *.orig -delete

.include <bsd.port.post.mk>
