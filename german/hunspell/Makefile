# $FreeBSD$

PORTNAME=	hunspell
PORTVERSION=	20120607
CATEGORIES=	german textproc
MASTER_SITES=	http://www.j3e.de/ispell/igerman98/dict/
DISTNAME=	igerman98-${PORTVERSION}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	German hunspell dictionaries

BUILD_DEPENDS=	buildhash:${PORTSDIR}/textproc/ispell \
		hunspell:${PORTSDIR}/textproc/hunspell

USES=		shebangfix perl5
USE_BZIP2=	yes
ALL_TARGET=	hunspell-all
USE_GMAKE=	yes
USE_PERL5=	build
SHEBANG_FILES=	bin/*.pl

PLIST_FILES=	%%DATADIR%%/de_AT.aff \
		%%DATADIR%%/de_AT.dic \
		%%DATADIR%%/de_CH.aff \
		%%DATADIR%%/de_CH.dic \
		%%DATADIR%%/de_DE.aff \
		%%DATADIR%%/de_DE.dic
PLIST_DIRSTRY=	%%DATADIR%%

CHALIASES=	de_LI
DEALIASES=	de_BE de_LU
.for ALIAS in ${CHALIASES} ${DEALIASES}
PLIST_FILES+=	%%DATADIR%%/${ALIAS}.aff \
		%%DATADIR%%/${ALIAS}.dic
.endfor

NO_STAGE=	yes
do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/hunspell/de_AT.aff ${WRKSRC}/hunspell/de_AT.dic \
		${WRKSRC}/hunspell/de_CH.aff ${WRKSRC}/hunspell/de_CH.dic \
		${WRKSRC}/hunspell/de_DE.aff ${WRKSRC}/hunspell/de_DE.dic ${DATADIR}/
.for ALIAS in ${CHALIASES}
	${LN} -s de_CH.aff ${DATADIR}/${ALIAS}.aff
	${LN} -s de_CH.dic ${DATADIR}/${ALIAS}.dic
.endfor
.for ALIAS in ${DEALIASES}
	${LN} -s de_DE.aff ${DATADIR}/${ALIAS}.aff
	${LN} -s de_DE.dic ${DATADIR}/${ALIAS}.dic
.endfor

.include <bsd.port.mk>
