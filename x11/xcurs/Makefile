# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD$

PORTNAME=	xcurs
PORTVERSION=	0.5.1
PORTREVISION=	6
CATEGORIES=	x11 python
MASTER_SITES=	http://freebsd.nsu.ru/distfiles/ \
		#http://varg.dyndns.org/psi/files/xcurs/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Editor for new X.Org style full-color cursors properties

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/PIL/__init__.py:${PORTSDIR}/graphics/py-imaging

USE_GNOME=	pygtk2
USE_PYTHON=	yes
NO_BUILD=	yes

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's,#!/usr/bin/python,#!/usr/bin/env python,g' \
		${WRKSRC}/parsexcursor.py ${WRKSRC}/xcurs.py
	@${REINPLACE_CMD} -e 's,gtk\.mainquit,gtk\.main_quit,' \
		${WRKSRC}/xcurs.py ${WRKSRC}/gladew.py ${WRKSRC}/filesel.py
	@${REINPLACE_CMD} -e 's,gtk\.mainloop,gtk\.main,' ${WRKSRC}/filesel.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xcurs.py ${PREFIX}/bin/${PORTNAME}
	@${MKDIR} ${PREFIX}/lib/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/filesel.py ${WRKSRC}/gladew.py \
		${WRKSRC}/parsexcursor.py ${WRKSRC}/xcursorlist.py \
			${PREFIX}/lib/${PORTNAME}
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/xcurs.glade ${DATADIR}

.include <bsd.port.mk>
