# Created by: Dominic Marks <dom@goodforbusiness.co.uk>
# $FreeBSD$

PORTNAME=	mod_proxy_xml
PORTVERSION=	0.1
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://apache.webthing.com/svn/apache/filters/xmlns/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTFILES=	xmlns.h mod_proxy_xml.c

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Apache module for rewriting URI references in XML


WRKSRC=	${WRKDIR}

USE_GNOME=	libxml2
USE_APACHE=	22+

AP_FAST_BUILD=	yes
AP_GENPLIST=	yes
AP_INC=	${LOCALBASE}/include/libxml2
AP_LIB=	${LOCALBASE}/lib -lxml2

NO_STAGE=	yes
pre-extract:
	@${MKDIR} ${WRKDIR}

do-extract:
	@${CP} ${DISTDIR}/xmlns.h ${DISTDIR}/mod_proxy_xml.c ${WRKDIR}/

.include <bsd.port.mk>
