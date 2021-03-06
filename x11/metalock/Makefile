# Created by: Timothy Beyer <beyert@cs.ucr.edu>
# $FreeBSD$

PORTNAME=	metalock
PORTVERSION=	0.8.0
PORTREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	BERLIOS GOOGLE_CODE
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${PORTNAME}_theme-Blue_Marble-1.3${EXTRACT_SUFX}

MAINTAINER=	beyert@cs.ucr.edu
COMMENT=	Enhanced X11 screen locker

LICENSE=	MIT
LICENSE_FILE=	${WRKDIR}/${DISTNAME}/LICENSE

FETCH_ARGS=	"-Fpr"
USE_BZIP2=	yes
USE_XORG=	x11 xt xproto xext xpm

OPTIONS_DEFINE=	IMLIB2 XFT ULTRAGETOPT
OPTIONS_DEFAULT=	IMLIB2 XFT ULTRAGETOPT
ULTRAGETOPT_DESC=	Use Ultragetopt

NO_STAGE=	yes
.include <bsd.port.options.mk>

MAKE_ARGS=	PREFIX="${LOCALBASE}" DEST_PREFIX="${PREFIX}" CC="${CC}"

.if ${PORT_OPTIONS:MULTRAGETOPT}
LIB_DEPENDS+=	ultragetopt.0:${PORTSDIR}/devel/ultragetopt
MAKE_ARGS+=	USE_ULTRAGETOPT=yes
.else
MAKE_ARGS+=	USE_ULTRAGETOPT=no
.endif

.if ${PORT_OPTIONS:MIMLIB2}
USE_EFL=	imlib2
MAKE_ARGS+=	USE_IMLIB2=yes
.else
MAKE_ARGS+=	USE_IMLIB2=no
.endif

.if ${PORT_OPTIONS:MXFT}
USE_XORG+=	xft
MAKE_ARGS+=	USE_XFT=yes
.else
MAKE_ARGS+=	USE_XFT=no
.endif

WRKSRC=		${WRKDIR}/${DISTNAME}/src

post-extract:
	${MKDIR} ${WRKDIR}/${DISTNAME}/themes
	${CP} -pR ${WRKDIR}/Blue_Marble ${WRKDIR}/${DISTNAME}/themes/

.include <bsd.port.mk>
