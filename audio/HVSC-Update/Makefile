# Created by: Anders Nordby <anders@FreeBSD.org>
# $FreeBSD$

PORTNAME=	HVSC-Update
PORTVERSION=	2.8.6
CATEGORIES=	audio emulators
MASTER_SITES=	http://www.hvsc.c64.org/download/files/tools/
DISTNAME=	${PORTNAME:S/-/_/}_Tool_${PORTVERSION:S/.//g}_source

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Update program for the HVSC C= 64 SID tune collection

BUILD_DEPENDS=	makedepend:${PORTSDIR}/devel/makedepend

NO_STAGE=	yes
GNU_CONFIGURE=	yes
USES=		gmake
WRKSRC=		${WRKDIR}/${PORTNAME:S/-/_/}_Tool_${PORTVERSION:S/.//g}

PORTDOCS=	HVS_file_format.txt HVSC_Update.txt SID_file_format.txt
PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/Update ${PREFIX}/bin/${PORTNAME}
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
