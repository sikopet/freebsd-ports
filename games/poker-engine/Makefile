# Created by: ijliao
# $FreeBSD$

PORTNAME=	poker-engine
PORTVERSION=	1.3.6
CATEGORIES=	games
MASTER_SITES=	http://download.gna.org/pokersource/sources/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python library that implements poker rules

BUILD_DEPENDS=	${LOCALBASE}/bin/rsync:${PORTSDIR}/net/rsync \
		${PYTHON_SITELIBDIR}/pokereval.py:${PORTSDIR}/games/py-poker-eval \
		${PYTHON_SITELIBDIR}/libxml2.py:${PORTSDIR}/textproc/py-libxml2 \
		${PYTHON_SITELIBDIR}/libxslt.py:${PORTSDIR}/textproc/py-libxslt

RUN_DEPENDS=	${LOCALBASE}/bin/rsync:${PORTSDIR}/net/rsync \
		${PYTHON_SITELIBDIR}/pokereval.py:${PORTSDIR}/games/py-poker-eval \
		${PYTHON_SITELIBDIR}/libxml2.py:${PORTSDIR}/textproc/py-libxml2 \
		${PYTHON_SITELIBDIR}/libxslt.py:${PORTSDIR}/textproc/py-libxslt

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		pkgconfig gettext
USE_PYTHON=	2.5-2.7
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

MAN8=	pokerconfigupgrade.8

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e \
		's|{datadir}/pkgconfig|(prefix)/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.in

test:
	@cd ${WRKSRC} && ${GMAKE} check

.include <bsd.port.mk>
