# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD$

PORTNAME=	watch
DISTVERSION=	3.2.8
CATEGORIES=	misc
MASTER_SITES=	http://procps.sourceforge.net/ \
		CRITICAL
PKGNAMEPREFIX=	gnu-
DISTNAME=	procps-${DISTVERSION}

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	GNU watch command

LICENSE=	GPLv2

LDFLAGS+=	-lncurses

MAN1=		gnu-watch.1
PLIST_FILES=	bin/${UNIQUENAME}

NO_STAGE=	yes
do-build:
	${CC} ${CFLAGS} ${LDFLAGS} ${WRKSRC}/${PORTNAME}.c \
		-o ${WRKSRC}/${UNIQUENAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${UNIQUENAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/watch.1 ${MANPREFIX}/man/man1/${UNIQUENAME}.1

.include <bsd.port.mk>
