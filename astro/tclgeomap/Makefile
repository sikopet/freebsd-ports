# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD$

PORTNAME=	tclgeomap
PORTVERSION=	2.11.6
CATEGORIES=	astro tcl
MASTER_SITES=	SF/tkgeomap/${PORTNAME}/${PORTVERSION}

MAINTAINER=	tcltk@FreeBSD.org
COMMENT=	Read, manipulate, and display geo data

NO_STAGE=	yes
USES+=		tcl
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tcl=${TCL_LIBDIR} --with-tclinclude=${TCL_INCLUDEDIR}
WRKSRC=		${WRKDIR}/${DISTNAME}/unix
TKPKG=		${PORTNAME}
PLIST_SUB=	INC=include/${TKPKG} LIB=lib/${TKPKG}
USE_LDCONFIG=	yes

MAN3=	geoLn.3 geoLnArr.3 geoLnArrToMap.3 geoProj.3 geography.3 mapLn.3 mapLnArr.3 tclgeomap.3
MANN=	tclgeomap.n tclgeomap_procs.n

post-install:
	@${LN} -sf ${PREFIX}/lib/lib${TKPKG}.so ${PREFIX}/lib/lib${PORTNAME}.so.0

post-patch:
	@${REINPLACE_CMD} -e '/=.*PACKAGE_VERSION/s|$${PACKAGE_VERSION}||g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|@PACKAGE_VERSION@||g' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e '/^package/!s|@PACKAGE_VERSION@||g' ${WRKSRC}/pkgIndex.tcl.in
	@${REINPLACE_CMD} -e '2s|.*|exit 0|' ${WRKSRC}/mkLinks

.include <bsd.port.mk>
