# Created by: Markus Brueffer <markus@FreeBSD.org>
# $FreeBSD$

PORTNAME=	kst
DISTVERSION=	2.0.6
PORTREVISION=	1
CATEGORIES=	science kde
MASTER_SITES=	SF/${PORTNAME}/Kst%20${DISTVERSION:C/-r.*//}/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Data viewing and plotting tool

LIB_DEPENDS=	gsl:${PORTSDIR}/math/gsl

USES=		cmake
USE_QT4=	gui xml designer svg opengl \
		qmake_build moc_build rcc_build uic_build
USE_LDCONFIG=	yes

CMAKE_SOURCE_PATH=	${WRKSRC}/cmake
CMAKE_ARGS+=	-Dkst_install_prefix=${PREFIX}

MAN1=		kst2.1
PLIST_SUB=	SHLIB_VER=${PORTVERSION}

OPTIONS_DEFINE=	FITS MATLAB NETCDF

FITS_DESC=	Support for data in FITS format
FITS_LIB_DEPENDS=	libcfitsio.so:${PORTSDIR}/astro/cfitsio

MATLAB_DESC=	Support for data in MATLAB format
MATLAB_BUILD_DEPENDS=	${LOCALBASE}/lib/libmatio.a:${PORTSDIR}/math/matio

NETCDF_DESC=	Support for data in NetCDF format
NETCDF_LIB_DEPENDS=	libnetcdf.so:${PORTSDIR}/science/netcdf

OPTIONS_SUB=	yes

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-patch:
	${REINPLACE_CMD} -e '/^Exec=kst2/s,\(kst2\).*,\1 %f,' \
		${WRKSRC}/src/kst/kst2.desktop

pre-configure:
.if !${PORT_OPTIONS:MFITS}
	${REINPLACE_CMD} -e '/find_package(CFITSIO)/d' \
		${CMAKE_SOURCE_PATH}/CMakeLists.txt
.endif
.if !${PORT_OPTIONS:MMATLAB}
	${REINPLACE_CMD} -e '/find_package(Matio)/d' \
		${CMAKE_SOURCE_PATH}/CMakeLists.txt
.endif
.if !${PORT_OPTIONS:MNETCDF}
	${REINPLACE_CMD} -e '/find_package(Netcdf)/d' \
		${CMAKE_SOURCE_PATH}/CMakeLists.txt
.endif

.include <bsd.port.mk>
