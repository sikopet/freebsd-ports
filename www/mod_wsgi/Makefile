# Created by: Douglas Thrift
# $FreeBSD$

PORTNAME=	mod_wsgi
PORTVERSION=	2.8
PORTREVISION=	2
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE} \
		http://apt.douglasthrift.net/files/${PORTNAME}/ \
		http://code.douglasthrift.net/files/${PORTNAME}/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}

MAINTAINER=	douglas@douglasthrift.net
COMMENT=	Python WSGI adapter module for Apache

LICENSE=	AL2


LATEST_LINK=	mod_wsgi2
CONFLICTS=	${PKGNAMEPREFIX}mod_wsgi-3.* mod_wsgi-3.*

PROJECTHOST=	modwsgi

USE_APACHE=	22
USE_PYTHON=	2.5-2.7

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-apxs="${APXS}" --with-python="${PYTHON_CMD}"

SUB_FILES=	pkg-message

PORTSCOUT=	limit:^2\.

NO_STAGE=	yes
pre-everything::
	@${ECHO_MSG} "======================= ATTENTION! ======================"
	@${ECHO_MSG}
	@${ECHO_MSG} "If you want to use daemon mode you will need to make sure"
	@${ECHO_MSG} "Apache and APR include thread support."
	@${ECHO_MSG}
	@${ECHO_MSG} "========================================================="

post-install:
	@${APXS} -e -a -n "${SHORTMODNAME}" "${APACHEMODDIR}/${MODULENAME}.so"
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
