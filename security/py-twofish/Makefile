# Created by: ijliao
# $FreeBSD$

PORTNAME=	twofish
PORTVERSION=	0.7
PORTREVISION=	1
CATEGORIES=	security python
MASTER_SITES=	SF/${PORTNAME}-py/${PORTNAME}-py/${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	twofishmodule-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Twofish cryptographic module for Python

USE_PYTHON=	yes
GNU_CONFIGURE=	yes
CFLAGS+=	-fPIC

NO_STAGE=	yes
do-install:
	${INSTALL_DATA} ${WRKSRC}/_twofish.so ${PYTHON_SITELIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.py ${PYTHON_SITELIBDIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
