# Created by: Chris D. Faulhaber <jedgar@fxp.org>
# $FreeBSD$

PORTNAME=	code2html
PORTVERSION=	0.9.1
CATEGORIES=	textproc
MASTER_SITES=	SF \
		http://www.palfrader.org/code2html/all/


MAINTAINER=	ports@FreeBSD.org
COMMENT=	Sourcecode to HTML converter

NO_BUILD=	yes
USES=		perl5
USE_PERL5=	run

MAN1=		code2html.1
PLIST_FILES=	bin/code2html

NO_STAGE=	yes
do-configure:
	@${REINPLACE_CMD} \
		-e 's|/usr/bin/bzip2|${BZIP2_CMD}|' \
		-e 's|/bin/gzip|/usr/bin/gzip|' \
		-e 's|/etc/|${PREFIX}/etc/|' \
		${WRKSRC}/code2html
	@${REINPLACE_CMD} -e 's|/etc/|${PREFIX}/etc/|' \
		${WRKSRC}/code2html.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/code2html ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/code2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
