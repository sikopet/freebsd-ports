# Created by: ijliao
# $FreeBSD$

PORTNAME=	pygopherd
PORTVERSION=	2.0.16
CATEGORIES=	net python
MASTER_SITES=	http://gopher.quux.org:70/devel/gopher/Downloads/pygopherd/ \
		http://gopher.quux.org:70/devel/gopher/Downloads/pygopherd/old/
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	araujo@FreeBSD.org
COMMENT=	Multiprotocol Information Server

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGVERSION=	2.0.15
WRKSRC=		${WRKDIR}/${PORTNAME}

MAN8=	pygopherd.8

NO_STAGE=	yes
post-patch:
.for f in setup.py bin/pygopherd conf/pygopherd.conf doc/pygopherd.8
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/${f}
.endfor
	@${REINPLACE_CMD} -e "s|/usr/bin/python2.2|${PYTHON_CMD}|g" \
		${WRKSRC}/bin/pygopherd
	@${FIND} ${WRKSRC} -name "*.py" | ${XARGS} ${REINPLACE_CMD} \
		-e "s|/usr/bin/python2.2|${PYTHON_CMD}|g"
	@${MV} ${WRKSRC}/conf/pygopherd.conf ${WRKSRC}/conf/pygopherd.conf-dist

post-install:
	@${INSTALL_MAN} ${WRKSRC}/doc/${MAN8} ${MANPREFIX}/man/man8
	@[ -f ${PREFIX}/etc/pygopherd/pygopherd.conf ] || \
			${CP} ${PREFIX}/etc/pygopherd/pygopherd.conf-dist ${PREFIX}/etc/pygopherd/pygopherd.conf

.include <bsd.port.mk>
