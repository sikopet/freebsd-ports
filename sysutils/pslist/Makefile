# Created by: roam@orbitel.bg
# $FreeBSD$

PORTNAME=	pslist
PORTVERSION=	1.3
CATEGORIES=	sysutils
MASTER_SITES=	http://devel.ringlet.net/sysutils/pslist/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A utility to view or send signals to processes with all their children

USES=		perl5
USE_PERL5=	run

MAN1=		pslist.1
MLINKS=		pslist.1 rkill.1 pslist.1 rrenice.1
PLIST_FILES=	bin/pslist \
		bin/rkill \
		bin/rrenice

NO_STAGE=	yes
.include <bsd.port.mk>
