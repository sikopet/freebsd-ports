# Created by: Sandro Sigala
# $FreeBSD$

PORTNAME=	cutils
PORTVERSION=	1.6
CATEGORIES=	devel
MASTER_SITES=	http://www.sigala.it/sandro/files/

MAINTAINER=	tj@FreeBSD.org
COMMENT=	Miscellaneous C programmer's utilities

GNU_CONFIGURE=	yes
MAKE_ENV=	MAKEINFO=makeinfo
MAN1=		cdecl.1 chilight.1 cobfusc.1 cundecl.1 cunloop.1 yyextract.1 \
		yyref.1
INFO=		cutils
PLIST_FILES=	bin/cdecl bin/chilight bin/cobfusc bin/cundecl bin/cunloop \
		bin/yyextract bin/yyref
MAKE_JOBS_UNSAFE=	yes

CONFLICTS=	cdecl-[0-9]*

NO_STAGE=	yes
.include <bsd.port.mk>
