# Created by: nemysis <nemysis@gmx.ch>
# $FreeBSD$

PORTNAME=	tanglet
PORTVERSION=	1.2.2
CATEGORIES=	games
MASTER_SITES=	http://gottcode.org/${PORTNAME}/
EXTRACT_SUFX=	-src.tar.bz2

MAINTAINER=	nemysis@FreeBSD.org

COMMENT=	Single player word finding game based on Boggle

LICENSE=	GPLv3

USE_BZIP2=	yes
USES=		desktop-file-utils
USE_QT4=	moc_build qmake_build rcc_build gui iconengines imageformats
QMAKEFLAGS=	QMAKE_LFLAGS="-lz"
INSTALLS_ICONS=	yes

PORTDOCS=	CREDITS ChangeLog NEWS

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -i '' -e '/PKGCONFIG += zlib/d' \
		${WRKSRC}/tanglet.pro

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		${QMAKE} ${QMAKEFLAGS} PREFIX=${PREFIX}

post-install:
	${LN} -sf ${PREFIX}/share/icons/hicolor/48x48/apps/${PORTNAME}.png ${PREFIX}/share/pixmaps/

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif

.include <bsd.port.mk>
