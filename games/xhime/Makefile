# Created by: Seiichirou Hiraoka
# $FreeBSD$

PORTNAME=	xhime
PORTVERSION=	1.51
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://www.tcp-ip.or.jp/~shochan/linux/
DISTFILES=	xhime151.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Resident Himechan for X Window System

WRKSRC=		${WRKDIR}/xhime1.51
USES=		imake
USE_XORG=	x11 xext
MANCOMPRESSED=	yes
MANLANG=	. ja
MAN6=		xhime.6

NO_CDROM=	'contains commercial character data'

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-install:
	${STRIP_CMD} ${PREFIX}/bin/xhime
	${INSTALL_MAN} ${WRKSRC}/xhime-man.euc \
		${PREFIX}/man/ja/man6
	${MV} ${PREFIX}/man/ja/man6/xhime-man.euc ${PREFIX}/man/ja/man6/xhime.6
	${GZIP_CMD} ${PREFIX}/man/ja/man6/xhime.6
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${PREFIX}/share/doc/ja/xhime
	@(cd ${WRKSRC};\
	${INSTALL_DATA} xhime-doc.euc xhime.doc rh110-doc.euc \
		${PREFIX}/share/doc/ja/xhime; \
	)
.endif

.include <bsd.port.mk>
