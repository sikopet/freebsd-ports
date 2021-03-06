# Created by: Clement Laforet <sheepkiller@cultdeadsheep.org>
# $FreeBSD$

PORTNAME=	morebalance
PORTVERSION=	0.4
PORTREVISION=	11
CATEGORIES=	net
MASTER_SITES=	http://morebalance.coolprojects.org/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Modular open source user-space load balancing system

LIB_DEPENDS+=	pcre.3:${PORTSDIR}/devel/pcre \
		gnutls.26:${PORTSDIR}/security/gnutls \
		ggz.5:${PORTSDIR}/games/libggz

CFLAGS+=	${PTHREAD_CFLAGS} -I${LOCALBASE}/include
MAKE_ARGS+=	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
USES=		gettext

LDFLAGS+=	-L${LOCALBASE}/lib -lpcre -lggz -lgnutls -lintl ${PTHREAD_LIBS}

MAN1=		morebalance.1
MAN5=		morebalance.conf.5

NO_STAGE=	yes
do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/sbin
	@${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.conf ${PREFIX}/etc/${PORTNAME}.conf.sample
	@${INSTALL_MAN} ${WRKSRC}/doc/${PORTNAME}.1 ${MANPREFIX}/man/man1
	@${INSTALL_MAN} ${WRKSRC}/doc/${PORTNAME}.conf.5 ${MANPREFIX}/man/man5
	@${MAKE_ENV} ${MAKE} -C ${WRKSRC} install-messages

.include <bsd.port.mk>
