# $FreeBSD$

PORTNAME=	cblog
PORTVERSION=	0.1.6
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://files.etoilebsd.net/cblog/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	Simple weblog in C using markdown

BUILD_DEPENDS=	${LOCALBASE}/lib/libneo_cs.a:${PORTSDIR}/www/clearsilver \
		${LOCALBASE}/lib/libcdb.a:${PORTSDIR}/databases/tinycdb
LIB_DEPENDS=	libfcgi.so:${PORTSDIR}/www/fcgi

LICENSE=	BSD

USE_RC_SUBR=	cblog

post-patch:
	@${REINPLACE_CMD} -e "s#^INCLUDES=.*#INCLUDES=-I${LOCALBASE}/include#g" \
		-e "s#^LIBDIR=.*#LIBDIR=-L${LOCALBASE}/lib#g" \
		-e "s#^CSINCLUDES=.*#CSINCLUDES=-I${LOCALBASE}/include/ClearSilver#g" \
		${WRKSRC}/config.mk

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cblog.cgi ${STAGEDIR}${PREFIX}/libexec/cblog.fcgi
	${INSTALL_PROGRAM} ${WRKSRC}/cblogctl ${STAGEDIR}${PREFIX}/bin/cblogctl
	${INSTALL_DATA} ${WRKSRC}/samples/cblog.conf ${STAGEDIR}${PREFIX}/etc/cblog.conf.sample
	${INSTALL_MAN} ${WRKSRC}/cgi/cblog.cgi.1 ${STAGEDIR}${MANPREFIX}/man/man1/cblog.fcgi.1

.include <bsd.port.mk>
