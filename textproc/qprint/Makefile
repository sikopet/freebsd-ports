# Created by: Takefu
# $FreeBSD$

PORTNAME=	qprint
PORTVERSION=	1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.fourmilab.ch/webtools/qprint/

MAINTAINER=	takefu@airport.fm
COMMENT=	Encode and decode Quoted-Printable files

LICENSE=	public
LICENSE_NAME=	Public Domain
LICENSE_FILE=	${WRKSRC}/COPYING
LICENSE_PERMS=	auto-accept

GNU_CONFIGURE=	yes
MAKE_JOBS_UNSAFE=yes

PLIST_FILES=	bin/qprint
MAN1=		qprint.1
ALL_TARGET=	prog check wringer

NO_STAGE=	yes
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qprint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/qprint.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
