# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD$

PORTNAME=	devmon-templates
DISTVERSION=	20080206
CATEGORIES=	net-mgmt
MASTER_SITES=	SF/devmon/${PORTNAME}/templates/

MAINTAINER=	feld@FreeBSD.org
COMMENT=	Device templates for use with devmon

RUN_DEPENDS=	devmon>0:${PORTSDIR}/net-mgmt/devmon

NO_BUILD=	yes

NO_STAGE=	yes
do-install:
	${INSTALL} -d ${PREFIX}/devmon/templates/
	(cd ${WRKSRC} && ${COPYTREE_SHARE} \* ${PREFIX}/devmon/templates/)

.include <bsd.port.mk>
