# Created by: Svyatoslav Lempert <svyatoslav.lempert@gmail.com>
# $FreeBSD$

PORTNAME=	ioncube
DISTVERSION=	4.4.2
CATEGORIES=	devel
MASTER_SITES=	http://downloads3.ioncube.com/loader_downloads/ \
		http://dl.ispsystem.info/ioncube/${DISTVERSION}/ \
		http://downloads2.ioncube.com/loader_downloads/
DISTNAME=	${PORTNAME}_loaders_fre_${VER}_${ARCH:S,i386,x86,:S,amd64,x86-64,}

MAINTAINER=	svyatoslav.lempert@gmail.com
COMMENT=	ionCube loader for PHP code

ONLY_FOR_ARCHS=	i386 amd64
NO_BUILD=	yes
USE_BZIP2=	yes
USE_PHP=	yes

SUB_FILES=	pkg-message
WRKSRC=		${WRKDIR}/${PORTNAME}
DIST_SUBDIR=	${PORTNAME}/${DISTVERSION}

NO_STAGE=	yes
.include <bsd.port.pre.mk>

# Detect OS Version
VER=	8
.if ${OSVERSION} >= 900000
VER=	9
.endif

.if empty(PHP_VERSION)
PHP_VERSION!=	${MAKE} -C ${PORTSDIR}/${PHP_PORT} -V PORTVERSION
.endif

PHP_INSTVER=	${PHP_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}

do-install:
	@${MKDIR} ${PREFIX}/lib/php/${PHP_EXT_DIR}/ioncube/
	${INSTALL_DATA} ${WRKSRC}/ioncube_loader_fre_${PHP_INSTVER}.so \
		${PREFIX}/lib/php/${PHP_EXT_DIR}/ioncube/ioncube_loader.so
	${INSTALL_DATA} ${WRKSRC}/ioncube_loader_fre_${PHP_INSTVER}_ts.so \
		${PREFIX}/lib/php/${PHP_EXT_DIR}/ioncube/ioncube_loader_ts.so

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
