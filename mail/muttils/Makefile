# Created by: Jason Helfman <jhelfman@experts-exchange.com>
# $FreeBSD$

PORTNAME=	muttils
PORTVERSION=	1.3
CATEGORIES=	mail python
MASTER_SITES=	https://bitbucket.org/blacktrash/${PORTNAME}/get/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTVERSION}

MAINTAINER=	jgh@FreeBSD.org
COMMENT=	Python utilities for console mail clients (eg. mutt)

CONFLICTS=	zh-wenju-[0-9]* talkfilters-[0-9]* reed-[0-9]*

CHANGESET=	8bb26094df06
WRKSRC=		${WRKDIR}/blacktrash-${PORTNAME}-${CHANGESET}
USE_PYTHON_BUILD=	yes
USE_PYTHON_RUN=		yes
USE_PYDISTUTILS=	yes

PORTEXAMPLES=	*

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MEXAMPLES}
	${MKDIR} ${EXAMPLESDIR}
	( cd ${WRKSRC}/contrib && ${INSTALL_DATA} \example-* ${EXAMPLESDIR} )
.endif

.include <bsd.port.mk>
