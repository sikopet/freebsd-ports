# Created by: Denise H. G. <darcsis@gmail.com>
# $FreeBSD$

PORTNAME=	wavegain
PORTVERSION=	1.2.8
CATEGORIES=	audio
MASTER_SITES=	http://www.rarewares.org/files/others/
DISTNAME=	${PORTNAME}-${PORTVERSION}srcs${EXTRACT_SUFFIX}

MAINTAINER=	darcsis@gmail.com
COMMENT=	A program that applies ReplayGain to wave files

LIB_DEPENDS=	libsndfile.so:${PORTSDIR}/audio/libsndfile

USES=		gmake
NO_STAGE=	yes
USE_ZIP=	yes
USE_DOS2UNIX=	audio.c wavegain.c

PLIST_FILES=	bin/wavegain

WRKSRC=	${WRKDIR}/WaveGain-${PORTVERSION}

.include <bsd.port.pre.mk>

.if ${ARCH} == "ia64" || ${ARCH} == "powerpc" || ${ARCH} == "sparc64"
BROKEN=		Does not compile on ia64, powerpc, or sparc64
.endif

post-patch:
	@${REINPLACE_CMD} -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.linux

do-configure:
	@cd ${WRKSRC} && ${CP} Makefile.linux Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.post.mk>
