# Created by: Edwin Groothuis
# $FreeBSD$

PORTNAME=	bomberclone
PORTVERSION=	0.11.9
CATEGORIES=	games
MASTER_SITES=	http://master.dl.sourceforge.net/project/${PORTNAME}/${PORTNAME}/

MAINTAINER=	edwin@mavetju.org
COMMENT=	Reimplementation of Atomic Bomber Man

USE_SDL=	image mixer sdl
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	--target="" --disable-werror
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}
CXXFLAGS+=	${PTHREAD_CFLAGS} -I${LOCALBASE}/include

NO_STAGE=	yes
post-extract:
	${FIND} ${WRKSRC} -type d -name CVS | ${XARGS} ${RM} -rf ;

.include <bsd.port.mk>
