# Created by: Yen-Ming Lee <leeym@FreeBSD.org>
# $FreeBSD$

PORTNAME=	umem
PORTVERSION=	1.0.1
CATEGORIES=	devel
MASTER_SITES=	https://labs.omniti.com/portableumem/releases/${PORTVERSION:R}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A port of the Solaris memory allocator

USE_BZIP2=	yes
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	libtool
ONLY_FOR_ARCHS=	i386 amd64
MAKE_JOBS_UNSAFE=	yes

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's/ -ldl//g' ${WRKSRC}/Makefile.in

MAN3=		umem_alloc.3 umem_cache_create.3 umem_debug.3

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} check

.include <bsd.port.mk>
