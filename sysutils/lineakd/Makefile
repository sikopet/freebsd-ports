# Created by: Kay Lehmann
# $FreeBSD$

PORTNAME=	lineakd
PORTVERSION=	0.9
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	SF/lineak/${PORTNAME}/${PORTNAME}-${PORTVERSION}
DIST_SUBDIR=	lineak

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lineakd is a daemon which enables special keys on internet keyboards

USE_GMAKE=	yes
USE_XORG=	x11 xext xt
USE_AUTOTOOLS=	libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes

CONFIGURE_ARGS+=--program-prefix=''

PORTDOCS=	README TODO AUTHORS

MAN1=		lineakd.1
#MANCOMPRESSED=	yes

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|-ldl||' \
		${WRKSRC}/lineak/Makefile.in ${WRKSRC}/lineakd/Makefile.in
	@${REINPLACE_CMD} -e 's|-O2||' ${WRKSRC}/configure

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/lineakd.conf.example ${EXAMPLESDIR}

.include <bsd.port.mk>
