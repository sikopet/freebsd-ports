# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD$
#   $MCom: ports/databases/libgda3-freetds/Makefile,v 1.2 2008/02/26 21:23:34 kwm Exp $

PORTREVISION?=	1
CATEGORIES=	databases gnome
PKGNAMESUFFIX?=	-freetds

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Provides freetds backend for the libgda3 library

MASTERDIR=	${.CURDIR}/../libgda3
BUILD_WRKSRC=	${WRKSRC}/providers/freetds/
INSTALL_WRKSRC=	${BUILD_WRKSRC}
PLIST=		${.CURDIR}/pkg-plist

LIBGDA3_SLAVE=	freetds

NO_STAGE=	yes
.include "${MASTERDIR}/Makefile"
