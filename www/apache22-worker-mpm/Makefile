# $FreeBSD$

MASTERDIR=		${.CURDIR}/../apache22

MAINTAINER=		apache@FreeBSD.org

WITH_MPM=		worker

LATEST_LINK=		apache22-${WITH_MPM}-mpm
DESCR=			${.CURDIR}/pkg-descr

PORT_OPTIONS+=		CGID
OPTIONS_EXCLUDE=	CGI
OPTIONS_UNSET+=		CGI

NO_STAGE=	yes
.include "${MASTERDIR}/Makefile"
