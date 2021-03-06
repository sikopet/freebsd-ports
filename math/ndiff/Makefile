# Created by: Stefan A. Deutscher (sad@mailaps.org)
# $FreeBSD$

PORTNAME=	ndiff
PORTVERSION=	2.00
PORTREVISION=	4
CATEGORIES=	math
MASTER_SITES=	ftp://ftp.math.utah.edu/pub/misc/
PKGNAMEPREFIX=

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Compare putatively similar files, ignoring small numeric differences

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if !defined(WITHOUT_GMP)
LIB_DEPENDS=	gmp.10:${PORTSDIR}/math/gmp
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-gmp
.else
.if ${ARCH} == sparc64
CONFIGURE_ARGS= --with-long-double
.else
CONFIGURE_ARGS= --with-double
.endif
.endif

GNU_CONFIGURE=	yes
ALL_TARGET=	all check-runs

MAN1=		ndiff.1
.if !defined(NOPORTDOCS)
PORTDOCS=	*
.endif

post-patch:
	@${REINPLACE_CMD} -e "s:%%DATADIR%%:${DATADIR}:g" ${WRKSRC}/Makefile.in

post-build:
	@${ECHO_MSG} "If there were no errors in the above checks then type"
	@${ECHO_MSG}
	@${ECHO_MSG} "	${MAKE} install"
	@${ECHO_MSG}
	@${ECHO_MSG} "to install ${PORTNAME}-${PORTVERSION}"

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.pdf  ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.ps   ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.html ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
