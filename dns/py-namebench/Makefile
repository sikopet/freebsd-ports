# Created by: Sahil Tandon <sahil@tandon.net>
# $FreeBSD$

PORTNAME=	namebench
PORTVERSION=	1.3.1
CATEGORIES=	dns python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-${PORTVERSION}-source
EXTRACT_SUFX=	.tgz

MAINTAINER=	jgh@FreeBSD.org
COMMENT=	An open-source DNS benchmark utility

LICENSE=	AL2

RUN_DEPENDS+=	\
	${PYTHON_PKGNAMEPREFIX}Jinja2>=2.5.5:${PORTSDIR}/devel/py-Jinja2 \
	${PYTHON_PKGNAMEPREFIX}graphy>=1.0:${PORTSDIR}/graphics/py-graphy \
	${PYTHON_PKGNAMEPREFIX}dnspython>=1.9.4:${PORTSDIR}/dns/py-dnspython \
	${PYTHON_PKGNAMEPREFIX}httplib2>=0.6.0:${PORTSDIR}/www/py-httplib2 \
	${PYTHON_PKGNAMEPREFIX}simplejson>=2.1.6:${PORTSDIR}/devel/py-simplejson

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if empty(PORT_OPTIONS:MX11)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}tkinter>=2.7.1:${PORTSDIR}/x11-toolkits/py-tkinter
.endif

MAKE_ENV+=	NO_THIRD_PARTY=yes
WRKSRC=	${WRKDIR}/${PORTNAME}-${PORTVERSION}

PORTDOCS=	README.txt

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_INSTALLARGS+=	--install-data=${PREFIX}/share

NO_INSTALL_MANPAGES=	yes

post-patch:
	@${REINPLACE_CMD} -e 's,/usr/local,${PREFIX},' \
		${WRKSRC}/libnamebench/util.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${INSTALL} -o ${DOCOWN} -g ${DOCGRP} -m 555 -d ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
