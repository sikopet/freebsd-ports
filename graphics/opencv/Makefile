# Created by: Marc Abramowitz (http://marc.abramowitz.info)
# $FreeBSD$

PORTNAME?=	opencv
PORTVERSION=	2.3.1
PORTREVISION=	7
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}library/${PORTNAME}-unix/${PORTVERSION}
DISTNAME=	OpenCV-${DISTVERSION}a

MAINTAINER=	jhale@FreeBSD.org
COMMENT=	Open Source Computer Vision library from Intel

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/doc/license.txt

WANT_GSTREAMER=	yes
MAKE_JOBS_UNSAFE=	yes
USE_BZIP2=	yes
USES=		cmake pkgconfig
USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}/OpenCV-${DISTVERSION}

NOT_FOR_ARCHS=	sparc64
NOT_FOR_ARCHS_REASON_sparc64=	does not compile on sparc64

DATADIR=	${PREFIX}/share/OpenCV
PLIST_SUB+=	VERSION=${DISTVERSION}

_COMPVERSION!= ${CC} --version
.if ${_COMPVERSION:Mclang}
USE_CXXSTD=	gnu++11
CXXFLAGS+=	-Wno-error -Wno-c++11-narrowing
.endif

.if !defined(_BUILDING_OPENCV_CORE) && !defined(_BUILDING_OPENCV_PYTHON)
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-opencv
LIB_DEPENDS+=	opencv_core.2:${PORTSDIR}/graphics/opencv-core
LDFLAGS+=	-L${LOCALBASE}/lib -lopencv_core

PORTDOCS=	*

OPTIONS_DEFINE=	EIGEN2 FFMPEG GSTREAMER GTK JASPER JPEG OPENEXR PNG \
		QT4 TBB TIFF V4L XINE EXAMPLES
EIGEN2_DESC=	Eigen 2 support
GTK_DESC=	GTK+ support
OPENEXR_DESC=	OpenEXR support
TBB_DESC=	TBB support

OPTIONS_DEFAULT=	EIGEN2 JASPER JPEG PNG TIFF V4L

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MEXAMPLES}
CMAKE_ARGS+=	-DBUILD_EXAMPLES:BOOL=On -DINSTALL_C_EXAMPLES:BOOL=On
PORTEXAMPLES+=	c cpp gpu
.endif

.if ${PORT_OPTIONS:MEIGEN2}
BUILD_DEPENDS+=	${LOCALBASE}/include/eigen2/Eigen/Eigen:${PORTSDIR}/math/eigen2
CMAKE_ARGS+=	-DWITH_EIGEN2:BOOL=On
.else
CMAKE_ARGS+=	-DDWITH_EIGEN2:BOOL=Off
.endif

.if ${PORT_OPTIONS:MFFMPEG}
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg
CMAKE_ARGS+=	-DWITH_FFMPEG:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_FFMPEG:BOOL=Off
.endif

.if ${PORT_OPTIONS:MGSTREAMER}
USE_GSTREAMER=	yes
CMAKE_ARGS+=	-DWITH_GSTREAMER:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_GSTREAMER:BOOL=Off
.endif

.if ${PORT_OPTIONS:MGTK}
USE_GNOME=	gtk20
CMAKE_ARGS+=	-DWITH_GTK:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_GTK:BOOL=Off
.endif

.if ${PORT_OPTIONS:MJASPER}
LIB_DEPENDS+=	jasper.4:${PORTSDIR}/graphics/jasper
CMAKE_ARGS+=	-DWITH_JASPER:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_JASPER:BOOL=Off
.endif

.if ${PORT_OPTIONS:MJPEG}
LIB_DEPENDS+=	jpeg.11:${PORTSDIR}/graphics/jpeg
CMAKE_ARGS+=	-DWITH_JPEG:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_JPEG:BOOL=Off
.endif

.if ${PORT_OPTIONS:MOPENEXR}
LIB_DEPENDS+=	IlmImf:${PORTSDIR}/graphics/OpenEXR
CMAKE_ARGS+=	-DWITH_OPENEXR:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_OPENEXR:BOOL=Off
.endif

.if ${PORT_OPTIONS:MPNG}
LIB_DEPENDS+=	png15:${PORTSDIR}/graphics/png
CMAKE_ARGS+=	-DWITH_PNG:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_PNG:BOOL=Off
.endif

.if ${PORT_OPTIONS:MQT4}
USE_QT4+=	opengl moc_build qmake_build rcc_build uic_build qtestlib
CMAKE_ARGS+=	-DWITH_QT:BOOL=On -DWITH_QT_OPENGL:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_QT:BOOL=Off
.endif

.if ${PORT_OPTIONS:MTBB}
LIB_DEPENDS+=	tbb.4:${PORTSDIR}/devel/tbb
CMAKE_ARGS+=	-DWITH_TBB:BOOL=On \
		-DTBBLIB_FOUND:BOOL=1 -DTBB_FOUND:BOOL=On \
		-DTBB_INCLUDE_DIRS:STRING="${LOCALBASE}/include" \
		-DTBB_LIBRARY_DIRS:STRING="${LOCALBASE}/lib" \
		-DTBB_LIBRARIES:STRING="tbb"
.else
CMAKE_ARGS+=	-DWITH_TBB:BOOL=Off
.endif

.if ${PORT_OPTIONS:MTIFF}
LIB_DEPENDS+=	tiff.4:${PORTSDIR}/graphics/tiff
CMAKE_ARGS+=	-DWITH_TIFF:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_TIFF:BOOL=Off
.endif

.if ${PORT_OPTIONS:MV4L}
LIB_DEPENDS+=	v4l2.0:${PORTSDIR}/multimedia/libv4l
BUILD_DEPENDS+=	${LOCALBASE}/include/linux/videodev2.h:${PORTSDIR}/multimedia/v4l_compat
CMAKE_ARGS+=	-DWITH_V4L:BOOL=On \
		-DCMAKE_REQUIRED_INCLUDES:STRING="${LOCALBASE}/include"
.else
CMAKE_ARGS+=	-DWITH_V4L:BOOL=Off
.endif

.if ${PORT_OPTIONS:MXINE}
LIB_DEPENDS+=	xine.2:${PORTSDIR}/multimedia/libxine
CMAKE_ARGS+=	-DWITH_XINE:BOOL=On
.else
CMAKE_ARGS+=	-DWITH_XINE:BOOL=Off
.endif

.else # defined(_BUILDING_OPENCV_CORE) || defined(_BUILDING_OPENCV_PYTHON)

. if defined(_BUILDING_OPENCV_CORE)
COMMENT=	OpenCV core libraries
PLIST=		${PKGDIR}/pkg-plist.oc
PKGNAMESUFFIX=	-core
LATEST_LINK=	${PORTNAME}-core
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-opencv-core

. elif defined(_BUILDING_OPENCV_PYTHON)
COMMENT=	OpenCV Python library
CATEGORIES=	graphics python
PLIST=		${PKGDIR}/pkg-plist.python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
PKGNAMESUFFIX=	# no suffix

LIB_DEPENDS+=	opencv_legacy.2:${PORTSDIR}/graphics/opencv
CMAKE_ENV+=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
INSTALL_WRKSRC=	${WRKSRC}/modules/python
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-opencv-python

USE_PYTHON=	yes
BUILD_DEPENDS+=	${PYNUMPY}
RUN_DEPENDS+=	${PYNUMPY}
. endif	# defined(_BUILDING_OPENCV_PYTHON)
CMAKE_ARGS+=	-DBUILD_EXAMPLES:BOOL=Off \
		-DINSTALL_PYTHON_EXAMPLES:BOOL=Off \
		-DBUILD_TESTS:BOOL=Off \
		-DDWITH_EIGEN2:BOOL=Off \
		-DWITH_FFMPEG:BOOL=Off \
		-DWITH_GSTREAMER:BOOL=Off \
		-DWITH_GTK:BOOL=Off \
		-DWITH_JASPER:BOOL=Off \
		-DWITH_JPEG:BOOL=Off \
		-DWITH_OPENEXR:BOOL=Off \
		-DWITH_PNG:BOOL=Off \
		-DWITH_QT:BOOL=Off \
		-DWITH_TBB:BOOL=Off \
		-DWITH_V4L:BOOL=Off \
		-DWITH_TIFF:BOOL=Off \
		-DWITH_XINE:BOOL=Off \
		-DWITH_PVAPI:BOOL=Off \
		-DWITH_1394:BOOL=Off \
		-DWITH_CUDA:BOOL=Off
.endif # defined(_BUILDING_OPENCV_CORE) || defined(_BUILDING_OPENCV_PYTHON)

.if defined(_BUILDING_OPENCV_PYTHON)
CMAGE_ARGS+=	-DBUILD_NEW_PYTHON_SUPPORT:BOOL=On
.else
CMAGE_ARGS+=	-DBUILD_NEW_PYTHON_SUPPORT:BOOL=Off
.endif

.include <bsd.port.pre.mk>

post-patch:
	@${MKDIR} ${CONFIGURE_WRKSRC}
	@${REINPLACE_CMD} -e 's:set(OPENCV_SOVERSION.*:set(OPENCV_SOVERSION "$${OPENCV_VERSION_MAJOR}"):' \
		-e 's:-pthread:${PTHREAD_LIBS}:g' \
		-e 's:$${OPENCV_LIB_INSTALL_PATH}/pkgconfig:$${CMAKE_INSTALL_PREFIX}/libdata/pkgconfig:g' \
		-e 's:share/OpenCV/doc:share/doc/opencv:g' \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e 's|${PORTNAME}/samples|examples/${PORTNAME}|g' \
		${WRKSRC}/samples/*/CMakeLists.txt \
		${WRKSRC}/samples/*/*/CMakeLists.txt
	@${FIND} ${WRKSRC} -name '*.orig' -exec rm {} \;

.if defined(_BUILDING_OPENCV_CORE) && !defined(_BUILDING_OPENCV_PYTHON)
	@${REINPLACE_CMD} -e '/add_subdirectory(data)/ d' \
		-e '/add_subdirectory(include)/ d' \
		-e 's|opencv.pc|opencv-core.pc|g' \
		-e 's|OpenCVConfig.cmake|OpenCVConfig-core.cmake|g' \
		-e 's|OpenCVConfig-version.cmake|OpenCVConfig-core-version.cmake|g' \
		-e 's|    set(root_files README)||g' \
		-e 's|    install(CODE "exec_program.*||g' \
		${WRKSRC}/CMakeLists.txt
	@${SED} -E -e \
		's|Name:.*|Name: OpenCV-core|' -e \
		's|Libs:.*|Libs: -L$${libdir} -lopencv_core@OPENCV_DLLVERSION@ -lopencv_imgproc@OPENCV_DLLVERSION@ -lopencv_video@OPENCV_DLLVERSION@ -lopencv_flann@OPENCV_DLLVERSION@|' \
		${WRKSRC}/opencv.pc.cmake.in > ${WRKSRC}/opencv-core.pc.cmake.in
	@${SED} -E -e \
		's|    set\(OPENCV_LIB_COMPONENTS .*|    set\(OPENCV_LIB_COMPONENTS opencv_core opencv_imgproc opencv_video opencv_ml opencv_flann\)|g' \
		${WRKSRC}/OpenCVConfig.cmake.in > ${WRKSRC}/OpenCVConfig-core.cmake.in
	@${LN} -sf OpenCVConfig-version.cmake.in ${WRKSRC}/OpenCVConfig-core-version.cmake.in
.endif
.if ! ${PORT_OPTIONS:MDOCS} || defined(_BUILDING_OPENCV_CORE) || defined(_BUILDING_OPENCV_PYTHON)
	@${REINPLACE_CMD} -e '/add_subdirectory(doc)/ d' \
		${WRKSRC}/CMakeLists.txt
.endif

.include <bsd.port.post.mk>
