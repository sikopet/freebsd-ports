# Created by: Alexander Panyushkin <vsityz@gmail.com>
# $FreeBSD$

PORTNAME=	hans
PORTVERSION=	0.4.1
CATEGORIES=	net security
MASTER_SITES=	SF/hanstunnel/source

MAINTAINER=	vsityz@gmail.com
COMMENT=	Hans makes it possible to tunnel IPv4 through ICMP

LICENSE=	GPLv3

OPTIONS_DEFINE=	CLANG

CLANG_DESC=	Build with Clang instead of GCC

OPTIONS_DEFAULT=	CLANG

PLIST_FILES=	bin/hans

SUB_FILES=	pkg-message

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCLANG}
.if ${OSVERSION} < 1000000
CC=clang
CXX=clang++
.if ${OSVERSION} < 900033
BUILD_DEPENDS+=	clang:${PORTSDIR}/lang/clang
.endif
.endif
.else
USE_GCC=4.2+
CC=gcc
CXX=g++
CPP=gcpp
.endif

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/hans ${LOCALBASE}/bin

post-install:	.SILENT
	${ECHO_MSG}
	${CAT} ${PKGMESSAGE}
	${ECHO_MSG}

.include <bsd.port.mk>
