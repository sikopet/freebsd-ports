# Created by: gugabsd <gugabsd@mundounix.com.br>
# $FreeBSD$

PORTNAME=	rhodecode
PORTVERSION=	1.7.2
CATEGORIES=	www devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	RhodeCode-${PORTVERSION}

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Fast and powerful management tool for Mercurial and GIT

LICENSE=	GPLv3

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}PasteScript>=1.6.3:${PORTSDIR}/www/py-pastescript
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pylons>=1.0:${PORTSDIR}/www/py-pylons \
		${PYTHON_PKGNAMEPREFIX}waitress>=0.8.4:${PORTSDIR}/www/py-waitress \
		${PYTHON_PKGNAMEPREFIX}webob>=1.0.8:${PORTSDIR}/www/py-webob \
		${PYTHON_PKGNAMEPREFIX}formencode>=1.2.4:${PORTSDIR}/www/py-formencode \
		${PYTHON_PKGNAMEPREFIX}webhelpers>=1.3:${PORTSDIR}/www/py-webhelpers \
		${PYTHON_PKGNAMEPREFIX}mako>=0.7.3:${PORTSDIR}/textproc/py-mako \
		${PYTHON_PKGNAMEPREFIX}sqlalchemy>=0.7.10:${PORTSDIR}/databases/py-sqlalchemy \
		${PYTHON_PKGNAMEPREFIX}pygments>=1.5:${PORTSDIR}/textproc/py-pygments \
		${PYTHON_PKGNAMEPREFIX}whoosh>=2.4.0:${PORTSDIR}/textproc/py-whoosh \
		${PYTHON_PKGNAMEPREFIX}Babel>=0.9.6:${PORTSDIR}/devel/py-babel \
		${PYTHON_PKGNAMEPREFIX}dateutil>=1.5:${PORTSDIR}/devel/py-dateutil \
		${PYTHON_PKGNAMEPREFIX}dulwich>=0.8.7:${PORTSDIR}/devel/dulwich \
		${PYTHON_PKGNAMEPREFIX}markdown>=2.2.1:${PORTSDIR}/textproc/py-markdown \
		${PYTHON_PKGNAMEPREFIX}docutils>=0.8.1:${PORTSDIR}/textproc/py-docutils \
		${PYTHON_PKGNAMEPREFIX}mock>=0:${PORTSDIR}/devel/py-mock \
		${PYTHON_PKGNAMEPREFIX}bcrypt>=0.2:${PORTSDIR}/security/py-bcrypt \
		${PYTHON_PKGNAMEPREFIX}simplejson>=2.5.2:${PORTSDIR}/devel/py-simplejson \
		${PYTHON_PKGNAMEPREFIX}PasteScript>=1.6.3:${PORTSDIR}/www/py-pastescript \
		${PYTHON_PKGNAMEPREFIX}pytz>=0:${PORTSDIR}/devel/py-pytz \
		${PYTHON_PKGNAMEPREFIX}repoze.lru>=0:${PORTSDIR}/devel/py-repoze.lru \
		${PYTHON_PKGNAMEPREFIX}celery>=0:${PORTSDIR}/devel/py-celery \
		mercurial>=2.6:${PORTSDIR}/devel/mercurial

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGNAME=	RhodeCode

USE_RC_SUBR=		rhodecode
SUB_FILES=		pkg-message

OPTIONSFILE?=		${PORT_DBDIR}/py-${PORTNAME}/options
OPTIONS_DEFINE=		LDAP GIT
OPTIONS_DEFAULT=	GIT

GIT_DESC=	GIT support

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MLDAP}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}ldap>=2.4.6:${PORTSDIR}/net/py-ldap2
.endif

.if ${PORT_OPTIONS:MGIT}
RUN_DEPENDS+=	${LOCALBASE}/bin/git:${PORTSDIR}/devel/git
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
