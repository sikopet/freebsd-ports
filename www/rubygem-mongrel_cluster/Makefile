# Created by: Rui Lopes (<rgl ruilopes com>)
# $FreeBSD$

PORTNAME=	mongrel_cluster
PORTVERSION=	1.0.5
PORTREVISION=	2
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Manages multiple Mongrel processes

DEPRECATED=	Does not work with Ruby 1.9
EXPIRATION_DATE=	2013-10-10

RUN_DEPENDS=	rubygem-mongrel>=1.0.2:${PORTSDIR}/www/rubygem-mongrel

USE_RC_SUBR=	mongrel_cluster
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
REINPLACE_ARGS=	-i ""
PLIST_FILES=	bin/mongrel_cluster_ctl

NO_STAGE=	yes
post-install:
	@${REINPLACE_CMD} -e 's|/usr/bin/env ruby|${RUBY}|' ${PREFIX}/bin/mongrel_cluster_ctl
	@${REINPLACE_CMD} -e 's|mongrel_rails|${PREFIX}/bin/mongrel_rails|g' \
		${PREFIX}/${GEM_LIB_DIR}/bin/mongrel_cluster_ctl
	@${REINPLACE_CMD} -e 's|\"mongrel_rails\"|\"${PREFIX}/bin/mongrel_rails\"|g' \
		${PREFIX}/${GEM_LIB_DIR}/lib/${PORTNAME}/init.rb

.include <bsd.port.mk>
