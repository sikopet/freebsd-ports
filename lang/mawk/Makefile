# Created by: Pedro F. Giffuni <giffunip@asme.org>
# $FreeBSD$

PORTNAME=	mawk
PORTVERSION=	1.3.3
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/languages/mawk/ \
		ftp://ftp.whidbey.net/pub/brennan/

MAINTAINER=	ota@j.email.ne.jp
COMMENT=	An implementation of new/posix awk

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	MATHLIB="-lm"
ALL_TARGET=	${PORTNAME}

MAN1=		mawk.1
PLIST_FILES=	bin/mawk

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} mawk_test fpe_test

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
