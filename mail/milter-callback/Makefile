# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD$

PORTNAME=	milter-callback
PORTVERSION=	1.6.0
CATEGORIES=	mail
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Milter to perform a envelope-from sender verification on target MX

LICENSE=	GPLv3

LIB_DEPENDS+=	spf2:${PORTSDIR}/mail/libspf2

USE_XZ=		yes
USE_RC_SUBR=	milter-callback
USE_GCC=	any

SUB_FILES=	pkg-message
MAN8=		milter-callback.8

SRC_FILES=	cache.c commonprocs.c cpit.c dealwithmxes.c detectlamespf.c \
		makedecision.c mcspf.c milter-callback.c pgupdate.c \
		processdirectpart.c processmxpart.c pushhistory.c sigusr1.c

CFLAGS+=	-DFREEBSD -DHAVE_NS_TYPE -DWITH_SPF -I${LOCALBASE}/include \
		-I${WRKSRC} -std=gnu99
LDFLAGS+=	-lmilter -lthr -L${LOCALBASE}/lib -lspf2

NO_STAGE=	yes
do-build:
.for f in ${SRC_FILES}
	${CC} ${CFLAGS} -c ${WRKSRC}/${f} -o ${WRKSRC}/${f:C/\.c/.o/}
.endfor
	${CC} ${LDFLAGS} ${SRC_FILES:C/(.*)\.c/${WRKSRC}\/\1.o/} \
		-o ${WRKSRC}/${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e "s|/usr/local|${PREFIX}|" \
		${WRKSRC}/${PORTNAME}.c
	@${REINPLACE_CMD} -e "s|/usr/local|${LOCALBASE}|" \
		${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|/var/tmp/|/var/run/|' \
		${WRKSRC}/${PORTNAME}.conf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/${MAN8} ${MANPREFIX}/man/man8

	${MKDIR} ${PREFIX}/etc/mail
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.conf \
		${PREFIX}/etc/mail/${PORTNAME}.conf.sample

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
