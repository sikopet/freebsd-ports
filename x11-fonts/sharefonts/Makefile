# Created by: dburr@FreeBSD.org
# $FreeBSD$

PORTNAME=	sharefonts
PORTVERSION=	0.10
PORTREVISION=	2
CATEGORIES=	x11-fonts
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	A collection of shareware ATM fonts from the CICA archives

RESTRICTED=	Shareware.  Cannot be distributed w/o prior authorization.

NO_BUILD=	yes

NO_STAGE=	yes
do-install:
	${MKDIR} ${PREFIX}/lib/X11/fonts/sharefont
	${CP} ${WRKDIR}/sharefont/* ${PREFIX}/lib/X11/fonts/sharefont
	${CHMOD} 755 ${PREFIX}/lib/X11/fonts/sharefont
	${CHMOD} 644 ${PREFIX}/lib/X11/fonts/sharefont/*

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
