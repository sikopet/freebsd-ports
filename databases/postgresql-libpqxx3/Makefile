# Created by: Palle Girgensohn <girgen@pingpong.net>
# $FreeBSD$

PORTNAME=	libpqxx
PORTVERSION=	3.1
CATEGORIES=	databases
MASTER_SITES=	http://pqxx.org/download/software/${PORTNAME}/
PKGNAMEPREFIX=	postgresql-
DIST_SUBDIR=	postgresql

MAINTAINER=	20080111.freebsd.org@ab.ote.we.lv
COMMENT=	New C++ interface for PostgreSQL

CONFLICTS=	postgresql-libpqxx-[2-4].*
LATEST_LINK=	${PKGNAMEPREFIX}${PORTNAME}3
PORTSCOUT=	limit:^2\.

USE_PGSQL=	yes
USES=		gmake pkgconfig
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
PLIST_SUB=	PORTVERSION=${PORTVERSION}

CONFIGURE_ARGS=	--with-postgres=${LOCALBASE} \
		--enable-shared \
		--with-postgres-include=${LOCALBASE}/include/postgresql

NO_STAGE=	yes
.include <bsd.port.mk>
