# Created by: jhb
# $FreeBSD$

PORTNAME=	bfe2
PORTVERSION=	20030723
PORTREVISION=	6
CATEGORIES=	emulators
MASTER_SITES=	SF/bfe/source/23jul2003
DISTNAME=	${PORTNAME}-23jul2003

MAINTAINER=	ports@FreeBSD.org
COMMENT=	X11 GUI for the bochs debugger (revision 2)

RUN_DEPENDS=	bochs:${PORTSDIR}/emulators/bochs

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		pkgconfig
HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	configure.sh

.if defined(WITH_GTK2)
USE_GNOME+=	gtk20
CONFIGURE_ARGS+=	--gtk 2.0
PKGNAMESUFFIX=	-gtk2
.else
USE_GNOME+=	gtk12
CONFIGURE_ARGS+=	--gtk 1.2
.endif

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e \
		's|%%CFLAGS%%|"${CFLAGS}"|g ; \
		 s|%%CC%%|"${CC}"|g ; \
		 s|%%PREFIX%%|"${PREFIX}"|g ; \
		 s|gtk-config --libs|pkg-config --libs gtk+|g ; \
		 s|gtk-config --cflags|pkg-config --cflags gtk+|g' \
				${WRKSRC}/${CONFIGURE_SCRIPT}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bfe2 ${PREFIX}/bin
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/README.bferc ${DATADIR}/bferc.sample
	${INSTALL_DATA} ${WRKSRC}/README.bferc ${DATADIR}

.include <bsd.port.mk>
