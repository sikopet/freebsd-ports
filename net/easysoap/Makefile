# Created by: Gabriel Ambuehl <gabriel_ambuehl@buz.ch>
# $FreeBSD$

PORTNAME=	easysoap
PORTVERSION=	0.8.0
PORTREVISION=	3
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/SWANSONG
DISTNAME=	EasySoap++-${PORTVERSION}

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	C++ SOAP Library based on expat

LIB_DEPENDS=	expat.6:${PORTSDIR}/textproc/expat2

USE_OPENSSL=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include
USE_LDCONFIG=	yes

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${OSVERSION} < 700042 && ${ARCH} == "amd64"
USE_GCC=	4.2+
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|echo aout|echo elf|g' \
	    ${WRKSRC}/configure

post-install:
	@${RM} -f ${PREFIX}/lib/libeasysoap.la

.include <bsd.port.post.mk>
