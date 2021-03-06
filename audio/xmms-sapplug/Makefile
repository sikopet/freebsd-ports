# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD$

PORTNAME=	xmms-sapplug
DISTVERSION=	0.3f
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	CRITICAL
DISTNAME=	sapplug-xmms-${DISTVERSION}

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	XMMS input plugin for playing 8bit Atari(TM) .sap audio files

LICENSE=	GPLv2

BUILD_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms
RUN_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms

USES=		gmake
NO_STAGE=	yes
USE_GNOME=	glib12
USE_LDCONFIG=	yes
MAKE_JOBS_UNSAFE=	yes

WRKSRC=		${WRKDIR}/sapplug-${DISTVERSION}

PLIST_FILES=	lib/xmms/Input/libsap.so

OPTIONS_DEFINE=	OPTIMIZED_CFLAGS

.include <bsd.port.options.mk>

_CLANG!=	${CXX} --version | ${HEAD} -1 | ${SED} -e 's/.*clang version \([0-9]\)\.\([0-9]\).*/\1\2/'
ISCLANG=	${_CLANG:M[34][0-9]}

# clang can build this without -fno-exceptions
.if empty(ISCLANG)
CXXFLAGS+=	-fno-exceptions
.endif

.if ${ARCH} == "amd64" || ${ARCH} == "ia64"
CFLAGS+=	-fpic -DPIC
.endif

.if ${PORT_OPTIONS:MOPTIMIZED_CFLAGS}
CXXFLAGS+=	-fPIC -fpic -funroll-all-loops -fno-strength-reduce \
		-finline-functions -fomit-frame-pointer
CFLAGS+=	-fPIC -fpic -funroll-all-loops -fomit-frame-pointer \
		-fno-strength-reduce
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|^\(}\);\(\ //.*\)|\1\2|' \
		${WRKSRC}/saplib/pokeyNamespace.h
	@${REINPLACE_CMD} -e 's|^\(C[[:alpha:]]*\)|\1?|' \
		${WRKSRC}/saplib/Makefile

do-install:
	${INSTALL_DATA} ${WRKSRC}/libsap.so ${PREFIX}/lib/xmms/Input/libsap.so

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
