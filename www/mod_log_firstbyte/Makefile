# Created by: Yen-Ming Lee <leeym@FreeBSD.org>
# $FreeBSD$

PORTNAME=	mod_log_firstbyte
PORTVERSION=	1.01
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://mod-log-firstbyte.googlecode.com/svn/trunk/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTFILES=	${PORTNAME}.c readme.txt
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Log the time between request and the first byte of the response served


USE_APACHE=	22+

PROJECTHOST=	mod-log-firstbyte
PKGMESSAGE=	${WRKSRC}/readme.txt

AP_FAST_BUILD=	yes
AP_GENPLIST=	yes

NO_STAGE=	yes
do-extract:
	${MKDIR} ${WRKSRC}
	cd ${DISTDIR}/${DIST_SUBDIR} && ${CP} ${DISTFILES} ${WRKSRC}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
