# Created by: nemysis <nemysis@gmx.ch>
# $FreeBSD$

PORTNAME=	netwalk
PORTVERSION=	0.4.10
PORTREVISION=	3
CATEGORIES=	games

MAINTAINER=	nemysis@FreeBSD.org
COMMENT=	Game where the object is to connect every terminal to the main server

LICENSE=	GPLv3

USE_GITHUB=	yes
GH_ACCOUNT=	blynn
GH_PROJECT=	${PORTNAME}
GH_TAGNAME=	${GH_COMMIT}
GH_COMMIT=	cb6b089

USES=		gmake iconv
USE_SDL=	sdl ttf
USE_XORG=	x11 xau xdmcp
MAKE_ARGS=	PREFIX=${STAGEDIR}${PREFIX}
ALL_TARGET=

PORTDOCS=	README

INSTALLS_ICONS=	yes
ICON_SIZES=	32x32 48x48 64x64 96x96 128x128

DESKTOP_ENTRIES="NetWalk" "${COMMENT}" "${PORTNAME}" \
		"${PORTNAME}" "Game;LogicGame;" "false"

OPTIONS_DEFINE=	DOCS

post-patch:
	@${REINPLACE_CMD} \
	-e 's|CC = gcc|CC = ${CC}|' \
	-e 's|CFLAGS=-Wall -O2 -fomit-frame-pointer|CFLAGS+= -fomit-frame-pointer|' \
	-e 's|sdl-config|$(SDL_CONFIG)|' \
	-e 's|PREFIX = /usr|PREFIX = ${PREFIX}|' \
		${WRKSRC}/Makefile

post-install:
.for s in ${ICON_SIZES}
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/icons/hicolor/${s}/apps/
	${INSTALL_DATA} ${WRKSRC}/icons/${PORTNAME}_${s}.png \
		${STAGEDIR}${PREFIX}/share/icons/hicolor/${s}/apps/${PORTNAME}.png
.endfor
	${LN} -sf ${PREFIX}/share/icons/hicolor/48x48/apps/${PORTNAME}.png \
		${STAGEDIR}${PREFIX}/share/pixmaps/

	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
