# Created by: jmz
# $FreeBSD$

PORTNAME=	p2c
PORTVERSION=	1.21a
PORTREVISION=	2
CATEGORIES=	lang
MASTER_SITES=	http://darkstar.ist.utl.pt/slackware/slackware_source/d/p2c/ \
		http://www.slackware.at/data/slackware-10.0/source/d/p2c/
DISTFILES=	p2c-1.21alpha2.tar.gz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Pascal to C translator

WRKSRC=		${WRKDIR}/p2c-1.21alpha-07.Dec.93
MAN1=		p2c.1 p2cc.1

pre-install: build
	@${MKDIR} ${PREFIX}/bin
	@${MKDIR} ${PREFIX}/lib
	@${MKDIR} ${PREFIX}/man/man1
	@${MKDIR} ${PREFIX}/include/p2c
	@${INSTALL_MAN} ${WRKSRC}/src/p2cc.man ${PREFIX}/man/man1/p2cc.1

NO_STAGE=	yes
.include <bsd.port.mk>
