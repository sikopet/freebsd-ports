# $FreeBSD$

PORTNAME=	chromaprint
PORTVERSION=	1.0
CATEGORIES=	audio
MASTER_SITES=	http://bitbucket.org/acoustid/${PORTNAME}/downloads/

MAINTAINER=	jhale@FreeBSD.org
COMMENT=	AcoustID audio fingerprinting library

LICENSE=	LGPL21

LIB_DEPENDS=	avcodec${FFMPEG_SUFFIX}:${PORTSDIR}/multimedia/ffmpeg${FFMPEG_SUFFIX}

USES=		cmake:outsource
USE_LDCONFIG=	yes

FETCH_ARGS=	-Fpr
CMAKE_ARGS=	-DBUILD_EXAMPLES:BOOL=ON \
		-DWITH_AVFFT:BOOL=ON \
		-DFFMPEG_SUFFIX:STRING=${FFMPEG_SUFFIX}
FFMPEG_SUFFIX?=	1

post-patch:
	${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_INSTALL_DIR}|libdata|' \
		 ${WRKSRC}/CMakeLists.txt

.include <bsd.port.pre.mk>

.if (${CXX:T} == "clang++" && ${OSVERSION} > 902000) || ${OSVERSION} > 1000054
CXXFLAGS+=	-stdlib=libc++ -std=c++11
.endif

.include <bsd.port.post.mk>
