# Created by: Alexey Mikhailov <karma@ez.pereslavl.ru>
# $FreeBSD$

PORTNAME=	xtrlock
PORTVERSION=	2.3
CATEGORIES=	x11
MASTER_SITES=	DEBIAN \
		http://www.skysmurf.nl/comp/FreeBSD/distfiles/
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	freebsd@skysmurf.nl
COMMENT=	X Transparent Lock

LICENSE=	GPLv2 GPLv3	# GPLv2 or later
LICENSE_COMB=	dual

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

USE_XORG=	x11

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lX11 -lcrypt

MAN1=		xtrlock.1
PLIST_FILES=	bin/xtrlock
BINMODE=	4555

NO_STAGE=	yes
post-extract:
	@${LN} -sf xtrlock.man ${WRKSRC}/xtrlock.1

post-patch:
	@${REINPLACE_CMD} -e \
		's|<crypt.h>|<unistd.h>| ; \
		 s|<values.h>|<limits.h>|' ${WRKSRC}/xtrlock.c

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -o xtrlock xtrlock.c ${LDFLAGS})

do-install:
	(cd ${WRKSRC} && ${INSTALL_PROGRAM} xtrlock ${PREFIX}/bin)
	(cd ${WRKSRC} && ${INSTALL_MAN} xtrlock.1 ${MANPREFIX}/man/man1)

.include <bsd.port.mk>
