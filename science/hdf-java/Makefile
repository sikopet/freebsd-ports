# Created by: rfarmer@predatorlabs.net
# $FreeBSD$

PORTNAME=	hdf-java
PORTVERSION=	2.8
CATEGORIES=	science java
MASTER_SITES=	http://www.hdfgroup.org/ftp/HDF5/hdf-java/src/ \
		http://www.predatorlabs.net/dl/
EXTRACT_SUFX=	-src.tar

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Java interface to HDF5

LIB_DEPENDS=	hdf5:${PORTSDIR}/science/hdf5-18 \
		jpeg:${PORTSDIR}/graphics/jpeg

USE_JAVA=	yes
JAVA_VERSION=	1.6+
JAVA_BUILD=	yes
JAVA_RUN=	yes

USE_DOS2UNIX=	yes
DOS2UNIX_REGEX=	.*/examples/.*Makefile.in

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-jdk=${JAVA_HOME}/include,${JAVA_HOME}/jre/lib/ \
		--with-hdf5=${LOCALBASE}/include \
		--with-libz=/lib \
		--with-libjpeg=${LOCALBASE} \
		--without-hdf4 \
		--without-h4toh5
USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}

OPTIONS_DEFINE=	SZIP DOCS
SZIP_DESC=	SZIP support (must match with science/hdf5-18)

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSZIP}
CONFIGURE_ARGS+=	--with-libsz=${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=	--without-libsz
.endif

.if ${PORT_OPTIONS:MDOCS}
ALL_TARGET=	all javadocs
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|"/libhdf.$$LLEXT"|"${LOCALBASE}/lib"|' \
		-e 's|$$z_lib"/libz."$$LLEXT|"/lib/libz.so.*"|' \
		-e 's|$$sz_lib"/libsz."$$LLEXT|"${LOCALBASE}/lib/libsz.so.*"|' \
		-e 's|LLEXT="a"|LLEXT="so"|g' \
		-e 's|COPT="-shared"|COPT="-fPIC"|g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|LIBDIR=$$(JH45INSTALLDIR)|LIBDIR=${PREFIX}|' \
		-e 's|$$(JH45INSTALLDIR)/lib|${JAVAJARDIR}|g' \
		-e 's|INSTALL_LIB |${INSTALL_LIB} |' \
		-e 's|cp |${INSTALL_DATA} |g' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e\
		's|$$HDFJAVA"/lib/freebsd:"$$HDFJAVA"/lib/ext|${PREFIX}/lib"|' \
		-e 's|$$HDFJAVA"/lib|${JAVAJARDIR}"|g' \
		${WRKSRC}/bin/hdfview.sh.in

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}/UsersGuide
	(cd ${WRKSRC}/docs/hdfview/ && ${COPYTREE_SHARE} "UsersGuide" ${DOCSDIR}/)
	(cd ${WRKSRC}/docs/ && ${COPYTREE_SHARE} "javadocs" ${DOCSDIR}/)
.endif

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} check

.include <bsd.port.mk>
