# Created by: arved
# $FreeBSD$

PORTNAME=	x2goclient-cli
DISTVERSION=	3.0.1-1.2
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://x2go.obviously-nice.de/deb/pool-lenny/x2goclient-cli/
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	arved@FreeBSD.org
COMMENT=	The x2go perl client

RUN_DEPENDS=	p5-Proc-Simple>=0:${PORTSDIR}/devel/p5-Proc-Simple \
		p5-Term-ReadPassword>=0:${PORTSDIR}/devel/p5-Term-ReadPassword \
		nxproxy:${PORTSDIR}/net/nxproxy

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE
USES=		perl5
PLIST_FILES=	bin/x2goclient-cli
WRKSRC=		${WRKDIR}/${PORTNAME}-${DISTVERSION:S,-1.2,,}
NO_BUILD=	yes

NO_STAGE=	yes
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/x2goclient-cli ${PREFIX}/bin

.include <bsd.port.mk>
