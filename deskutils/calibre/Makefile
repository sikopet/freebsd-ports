# Created by: stas
# $FreeBSD$

PORTNAME=	calibre
PORTVERSION=	1.2.0
CATEGORIES=	deskutils python
MASTER_SITES=	SF/${PORTNAME}/${PORTVERSION}/

MAINTAINER=	rnejdl@ringofsaturn.com
COMMENT=	Ebook management application

LIB_DEPENDS=	libMagickWand.so:${PORTSDIR}/graphics/ImageMagick \
		libfontconfig.so:${PORTSDIR}/x11-fonts/fontconfig \
		libpoppler-qt4.so:${PORTSDIR}/graphics/poppler-qt4 \
		libwmflite.so:${PORTSDIR}/graphics/libwmf \
		libchm.so:${PORTSDIR}/misc/chmlib \
		libicudata.so:${PORTSDIR}/devel/icu \
		libpodofo.so:${PORTSDIR}/graphics/podofo
BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sip>=0:${PORTSDIR}/devel/py-sip \
		${PYTHON_PKGNAMEPREFIX}sqlite3>=0:${PORTSDIR}/databases/py-sqlite3 \
		${PYTHON_PKGNAMEPREFIX}qt4-core>=0:${PORTSDIR}/devel/py-qt4-core \
		${PYTHON_PKGNAMEPREFIX}qt4-gui>=0:${PORTSDIR}/x11-toolkits/py-qt4-gui \
		${PYTHON_PKGNAMEPREFIX}qt4-network>=0:${PORTSDIR}/net/py-qt4-network \
		${PYTHON_PKGNAMEPREFIX}qt4-webkit>=0:${PORTSDIR}/www/py-qt4-webkit \
		${PYTHON_PKGNAMEPREFIX}cssutils>=0.9.9:${PORTSDIR}/www/py-cssutils \
		${PYTHON_PKGNAMEPREFIX}dateutil>=0:${PORTSDIR}/devel/py-dateutil \
		${PYTHON_PKGNAMEPREFIX}imaging>=0:${PORTSDIR}/graphics/py-imaging \
		${PYTHON_PKGNAMEPREFIX}lxml>=0:${PORTSDIR}/devel/py-lxml
RUN_DEPENDS=	xdg-open:${PORTSDIR}/devel/xdg-utils \
		${PYTHON_PKGNAMEPREFIX}dnspython>=0:${PORTSDIR}/dns/py-dnspython \
		${PYTHON_PKGNAMEPREFIX}dateutil>=0:${PORTSDIR}/devel/py-dateutil \
		${PYTHON_SITELIBDIR}/BeautifulSoup.py:${PORTSDIR}/www/py-beautifulsoup32 \
		${PYTHON_PKGNAMEPREFIX}imaging>=0:${PORTSDIR}/graphics/py-imaging \
		${PYTHON_PKGNAMEPREFIX}lxml>=0:${PORTSDIR}/devel/py-lxml \
		${PYTHON_PKGNAMEPREFIX}mechanize>=0:${PORTSDIR}/www/py-mechanize \
		${PYTHON_PKGNAMEPREFIX}sqlite3>=0:${PORTSDIR}/databases/py-sqlite3 \
		${PYTHON_PKGNAMEPREFIX}qt4-core>=0:${PORTSDIR}/devel/py-qt4-core \
		${PYTHON_PKGNAMEPREFIX}qt4-gui>=0:${PORTSDIR}/x11-toolkits/py-qt4-gui \
		${PYTHON_PKGNAMEPREFIX}qt4-network>=0:${PORTSDIR}/net/py-qt4-network \
		${PYTHON_PKGNAMEPREFIX}qt4-svg>=0:${PORTSDIR}/graphics/py-qt4-svg \
		${PYTHON_PKGNAMEPREFIX}qt4-webkit>=0:${PORTSDIR}/www/py-qt4-webkit \
		${PYTHON_PKGNAMEPREFIX}qt4-xml>=0:${PORTSDIR}/textproc/py-qt4-xml \
		${PYTHON_PKGNAMEPREFIX}dbus>=0:${PORTSDIR}/devel/py-dbus \
		${PYTHON_PKGNAMEPREFIX}netifaces>=0:${PORTSDIR}/net/py-netifaces \
		${PYTHON_PKGNAMEPREFIX}cssselect>=0:${PORTSDIR}/www/py-cssselect \
		${PYTHON_PKGNAMEPREFIX}apsw>=0:${PORTSDIR}/databases/py-apsw \
		pdftohtml:${PORTSDIR}/graphics/poppler-utils \
		lshal:${PORTSDIR}/sysutils/hal

USE_RC_SUBR=	calibre
EXTRACT_BEFORE_ARGS=	-x -s '/^calibre/~-src/' -f

USES=		shared-mime-info
USE_XZ=		yes
USE_PYTHON=	2.7
USE_QT4=	qmake_build moc_build
INSTALLS_ICONS=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-src
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_ENV+=	FC_INC_DIR="${LOCALBASE}/include/fontconfig" \
		FC_LIB_DIR="${LOCALBASE}/lib" \
		OVERRIDE_CFLAGS="${CFLAGS}" \
		OVERRIDE_LDFLAGS="${LDFLAGS}" \
		PODOFO_LIB_DIR="${LOCALBASE}/lib" \
		PODOFO_INC_DIR="${LOCALBASE}/include/podofo" \
		WITH_USB=yes

NO_STAGE=	yes
do-build:
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} ${PYTHON_CMD} \
		${PYSETUP} build)

do-install:
.for dir in desktop-directories applications  gnome/apps mime/packages icons/hicolor/128x128/apps zsh/site-functions
	${MKDIR} ${PREFIX}/share/${dir}
.endfor
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} ${PYTHON_CMD} \
		${PYSETUP} ${INSTALL} --prefix ${PREFIX})

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
