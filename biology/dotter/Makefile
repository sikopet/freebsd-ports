# Created by: Fernan Aguero <fernan@iib.unsam.edu.ar>
# $FreeBSD$

PORTNAME=	dotter
PORTVERSION=	20021204 # last modified date in FTP server
CATEGORIES=	biology
MASTER_SITES=	http://sonnhammer.sbc.su.se/download/software/dotter/ \
		LOCAL/glarkin
DISTNAME=	${PORTNAME}.LIN
EXTRACT_SUFX=	#
DIST_SUBDIR=	${PORTNAME}-${PORTVERSION}
EXTRACT_ONLY=	#

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A viewer for multiple sequence alignments

DEPRECATED=	Broken for more than 6 month
EXPIRATION_DATE=	2013-11-18

BROKEN=		checksum mismatch

USE_LINUX=	yes
ONLY_FOR_ARCHS=	i386

NO_BUILD=	yes
PLIST_FILES=	bin/${PORTNAME} bin/${DISTNAME}

NO_STAGE=	yes
do-install:
	${BRANDELF} -t Linux ${DISTDIR}/${DIST_SUBDIR}/${DISTNAME}
	${INSTALL_PROGRAM} ${DISTDIR}/${DIST_SUBDIR}/${DISTNAME} \
	${PREFIX}/bin
	( cd ${PREFIX}/bin && ${LN} -s ${DISTNAME} ${PORTNAME} )

.include <bsd.port.mk>
