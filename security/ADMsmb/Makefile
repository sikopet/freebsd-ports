# Created by: Jacek Serwatynski <tutus@trynet.eu.org>
# $FreeBSD$

PORTNAME=	ADMsmb
PORTVERSION=	0.3
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	groups/ADM
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Security scanner for Samba

USES=		gmake
MAKE_ARGS=	CC="${CC}" FLAGS1="${CFLAGS}"

NO_STAGE=	yes
post-patch:
	@${FIND} ${WRKSRC} -name "*.o" -delete
	@${REINPLACE_CMD} -e 's|-O3|${CFLAGS}|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADMsmb ${PREFIX}/bin
	@${MKDIR} ${PREFIX}/share/ADMsmb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/ADMsmb

.include <bsd.port.mk>
