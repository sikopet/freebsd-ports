# Created by: Yen-Ming Lee <leeym@FreeBSD.org>
# $FreeBSD$

PORTNAME=	antiword
PORTVERSION=	0.37
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://www.winfield.demon.nl/linux/

MAINTAINER=	leeym@FreeBSD.org
COMMENT=	An application to display Microsoft(tm) Word files

USE_GMAKE=	yes
MAKE_JOBS_UNSAFE=yes
INSTALL_TARGET=	global_install

MAN1=		antiword.1
PORTDOCS=	COPYING ChangeLog Emacs Exmh FAQ History Mozilla Mutt Netscape \
		QandA ReadMe antiword.1 antiword.man antiword.php testdoc.doc

CFLAGS+=	-DNDEBUG

NO_STAGE=	yes
.include <bsd.port.options.mk>

post-patch:
	@${FIND} ${WRKSRC} -type f | ${XARGS} ${REINPLACE_CMD} \
		-e 's,/usr/local,${PREFIX},g' \
		-e 's,/usr/share,${PREFIX}/share,g'
	@${REINPLACE_CMD} -E 's|LD|CC|g; /^(CC|CFLAGS)/d' ${WRKSRC}/${MAKEFILE}
	@${TOUCH} ${WRKSRC}/fontinfo.h
	@${REINPLACE_CMD} -e 's,/usr/bin/perl,${PERL},' ${WRKSRC}/Unix-only/fontinfo.pl

post-install:
	@${INSTALL_MAN} ${WRKSRC}/Docs/antiword.1 ${MANPREFIX}/man/man1
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/Docs && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
