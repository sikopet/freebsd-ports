# Created by: David Yeske <dyeske@gmail.com>
# $FreeBSD$

PORTNAME=	leocad
PORTVERSION=	0.80.1
CATEGORIES=	cad
MASTER_SITES=	GOOGLE_CODE
DISTFILES=	${PORTNAME}-${PORTVERSION}-src.tgz \
		${LEOCAD_PIECES}
DIST_SUBDIR=	${PORTNAME}
EXTRACT_ONLY=	${PORTNAME}-${PORTVERSION}-src.tgz

MAINTAINER=	nemysis@FreeBSD.org
COMMENT=	CAD program that uses bricks similar to those found in many toys

LICENSE=	GPLv2

EXTRACT_DEPENDS=${UNZIP_CMD}:${PORTSDIR}/archivers/unzip
LIB_DEPENDS=	libjpeg.so:${PORTSDIR}/graphics/jpeg \
		libpng15.so:${PORTSDIR}/graphics/png
RUN_DEPENDS=	${LOCALBASE}/share/ldraw/models/car.dat:${PORTSDIR}/cad/ldraw

WRKSRC=		${WRKDIR}/${PORTNAME}
LEOCAD_PIECES=	pieces-7439.zip

USES=		desktop-file-utils gmake pkgconfig shared-mime-info
USE_QT4=	moc_build qmake_build rcc_build uic_build iconengines imageformats \
		corelib gui network opengl

USE_GL=		glut
USE_GNOME=	gtk20

MAN1=		leocad.1

PORTDOCS=	CREDITS.txt README.txt TODO.txt

INSTALLS_ICONS=	yes
ICON_SIZES=	16x16 24x24 32x32 48x48 128x128 256x256

OPTIONS_DEFINE=	DOCS

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-extract:
	@${UNZIP_CMD} -q -o ${_DISTDIR}/${LEOCAD_PIECES} -d ${WRKDIR}/pieces

post-patch:
	@${REINPLACE_CMD} -e 's|/usr|${PREFIX}|' \
		-e 's|share/man/man1|man/man1|' \
		${WRKSRC}/${PORTNAME}.pro
	@${REINPLACE_CMD} -e 's|docs.files = docs/README.txt docs/CREDITS.txt docs/COPYING.txt|docs.files = |' \
			 ${WRKSRC}/${PORTNAME}.pro

.for s in 16 24 32 48 128 256
	@cd ${WRKSRC}/tools/icon && \
		${MV} icon${s}.png ${PORTNAME}_${s}x${s}.png
.endfor
	@cd ${WRKSRC}/tools/icon && ${CP} -a ${PORTNAME}_128x128.png icon128.png
	@cd ${WRKSRC}/tools/icon && ${MV} icon.svg ${PORTNAME}.svg

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		${QMAKE} ${QMAKEFLAGS} PREFIX=${PREFIX}

post-install:
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKDIR}/pieces/* ${DATADIR}

.for s in ${ICON_SIZES}
	@${MKDIR} ${PREFIX}/share/icons/hicolor/${s}/apps
	${INSTALL_DATA} ${WRKSRC}/tools/icon/${PORTNAME}_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}/apps/${PORTNAME}.png
.endfor
	@${MKDIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/tools/icon/${PORTNAME}.svg  \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	@${LN} -sf ${PREFIX}/share/icons/hicolor/48x48/apps/${PORTNAME}.png ${PREFIX}/share/pixmaps/
	${INSTALL_MAN} ${WRKSRC}/docs/${MAN1} ${MAN1PREFIX}/man/man1/

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/docs/|} ${DOCSDIR}
.endif

.include <bsd.port.mk>
