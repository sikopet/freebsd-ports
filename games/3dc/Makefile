# Created by: Andrey Zakhvatov
# $FreeBSD$

PORTNAME=	3dc
PORTVERSION=	0.8.1
PORTREVISION=	3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/strategy
DISTNAME=	3Dc-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	3-Dimensional Chess for X Window System

LICENSE=	GPLv2

LIB_DEPENDS=	Xaw3d:${PORTSDIR}/x11-toolkits/Xaw3d

USES=		perl5
USE_PERL5=	build
USE_XORG=	x11 xaw xext xmu xpm xt
WRKSRC=		${WRKDIR}/3Dc/src

NO_STAGE=	yes
post-patch:
.for file in init.c main.c piece.c stack.c xif.c
	@${REINPLACE_CMD} -i '' -e 's|malloc.h|stdlib.h|' \
		${WRKSRC}/${file}
.endfor

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/3Dc ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	@ ${MKDIR} ${PREFIX}/share/doc/3Dc
.for file in 3Dc-rules.html ACKNOWLEDGEMENTS GPL README TODO
	@ ${INSTALL_DATA} ${WRKSRC}/../${file} ${PREFIX}/share/doc/3Dc
.endfor
.endif

.include <bsd.port.mk>
