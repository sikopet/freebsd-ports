# Created by: trevor
# $FreeBSD$

PORTNAME=	festvox-ked16
PORTVERSION=	1.4.0
PORTREVISION=	1
CATEGORIES=	audio accessibility
MASTER_SITES=	${MASTER_SITE_FESTIVAL}
MASTER_SITE_SUBDIR=	1.4.1
DISTNAME=	festvox_kedlpc16k
DIST_SUBDIR=	festival

MAINTAINER=	ports@FreeBSD.org
COMMENT=	American English male voice, sampled at 16 kHz, for Festival

RUN_DEPENDS=	\
${LOCALBASE}/share/festival/lib/dicts/wsj.wp39.poslexR:${PORTSDIR}/audio/festlex-poslex \
${LOCALBASE}/share/festival/lib/dicts/cmu/cmulex.scm:${PORTSDIR}/audio/festlex-cmu

WRKSRC=		${WRKDIR}/festival

CONFLICTS=	festvox-ked8-*

NO_BUILD=	yes
NO_STAGE=	yes

FHOME=		${PREFIX}/share/festival

post-extract:
	@ ${CHMOD} -R a+r ${WRKSRC}
	@ ${FIND} ${WRKSRC} -type d -print0 | ${XARGS} -0 ${CHMOD} 755

do-install:
	${MKDIR} ${FHOME}
	cd ${WRKSRC} && ${CP} -pPR * ${FHOME}

.include <bsd.port.mk>
