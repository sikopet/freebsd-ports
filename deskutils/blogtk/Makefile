# Created by: ijliao
# $FreeBSD$

PORTNAME=	blogtk
PORTVERSION=	2.0
CATEGORIES=	deskutils python
MASTER_SITES=	http://launchpad.net/${PORTNAME}/${PORTVERSION}/${PORTVERSION}/+download/

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Client for Blogger, Movable Type, and other blogging systems

DEPRECATED=	This is dead upstream and is no longer being maintained
EXPIRATION_DATE=2013-11-01

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/feedparser.py:${PORTSDIR}/textproc/py-feedparser \
		${PYTHON_SITELIBDIR}/atom/__init__.py:${PORTSDIR}/devel/py-gdata \
		${PYTHON_SITELIBDIR}/webkit/__init__.py:${PORTSDIR}/www/py-webkitgtk
USE_GNOME=	pygnomeextras pygtksourceview
USE_PYTHON=	2.3-2.7	# No Python 3 support

# Is there a better way to handle this? Launchpad depends on 302 directs it seems
FETCH_ARGS=	-pRr
NO_BUILD=	yes
MAKE_ENV+=	PYTHON="${PYTHON_CMD}"

DATADIR=	${PREFIX}/share/${PORTNAME}2

NO_STAGE=	yes
post-install:
	@${RM} -f ${DATADIR}/lib/blogtk2/*.py~

.include <bsd.port.mk>
