# Created by: ijliao
# $FreeBSD$

PORTNAME=	wmapp
PORTVERSION=	0.0.4.3
PORTREVISION=	2
CATEGORIES=	x11-toolkits windowmaker
MASTER_SITES=	http://starplot.org/wmapp/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A DockApp Graphics Library

USE_XORG=	x11 xpm
USE_GMAKE=	yes
CFLAGS+=	-I${LOCALBASE}/include
ALL_TARGET=	# empty
PLIST_FILES=	lib/libwmapp.a

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e "s|export |#export |g" ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e "s|malloc\.h|stdlib.h|g" ${WRKSRC}/xwrapper.h

do-install:
	@${MKDIR} ${PREFIX}/include/wmapp
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/wmapp
	@${FIND} ${PREFIX}/include/wmapp -type f | \
		${SED} 's,^${PREFIX}/,,' >> ${TMPPLIST}
	@${ECHO_CMD} "@dirrm include/wmapp" >> ${TMPPLIST}
	${INSTALL_DATA} ${WRKSRC}/libwmapp.a ${PREFIX}/lib
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in FAQ.txt README Widgets.txt
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
	@${FIND} ${DOCSDIR} -type f | \
		${SED} 's,^${PREFIX}/,,' >> ${TMPPLIST}
	@${ECHO_CMD} "@dirrm ${DOCSDIR:S,^${PREFIX}/,,}" >> ${TMPPLIST}
.endif

.include <bsd.port.mk>
