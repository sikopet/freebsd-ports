# Created by: Nils M Holm <nmh@t3x.org>
# $FreeBSD$

PORTNAME=	t3x
PORTVERSION=	8.1.5
PORTREVISION=	1
CATEGORIES=	lang devel
MASTER_SITES=	http://www.t3x.org/files/
DISTNAME=	t3x-${PORTVERSION:S/.//g}

MAINTAINER=	nmh@t3x.org
COMMENT=	A compiler for the minimum procedural language T3X

ONLY_FOR_ARCHS=	i386

MAN7=		t3x.7
MANCOMPRESSED=	no

MAKE_ENV+=	INSTALL_PREFIX=${PREFIX}

NO_STAGE=	yes
do-configure:
	@(cd ${WRKSRC}/ports/freebsd-386-elf; ./Config boot)

do-build:
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET})
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} INSTALL_PREFIX=${WRKSRC}/test ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${INSTALL_TARGET})
	@(cd ${WRKSRC}; ${MAKE} allclean)
	@(cd ${WRKSRC}/ports/freebsd-386-elf; ./Config build)
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} T3XDIR=${WRKSRC}/test/t3x/r8 PATH=${PATH}:${WRKSRC}/test/bin ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET})

.include <bsd.port.mk>
