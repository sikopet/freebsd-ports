# Created by: makeport.pl
# $FreeBSD$

PORTNAME=	vorbis
PORTVERSION=	1.4
PORTREVISION=	4
CATEGORIES=	audio python
MASTER_SITES=	http://ekyo.nerim.net/software/pyogg/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	pyvorbis-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Object-oriented Python bindings for the vorbis library

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/ogg/_ogg.so:${PORTSDIR}/audio/py-ogg
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/ogg/_ogg.so:${PORTSDIR}/audio/py-ogg
LIB_DEPENDS=	libvorbis.so:${PORTSDIR}/audio/libvorbis

USE_PYTHON=		-2.7
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes
PYDISTUTILS_PKGNAME=	pyvorbis

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local|${PREFIX}|' \
	${WRKSRC}/config_unix.py

do-configure:
	@cd ${WRKSRC} && ${PYTHON_CMD} config_unix.py

.include <bsd.port.mk>
