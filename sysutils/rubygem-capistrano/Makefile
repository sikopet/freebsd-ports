# Created by: Roderick van Domburg <r.s.a.vandomburg@student.utwente.nl>
# $FreeBSD$

PORTNAME=	capistrano
PORTVERSION=	2.14.2
CATEGORIES=	sysutils rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A utility for executing commands in parallel on multiple machines

RUN_DEPENDS=	rubygem-highline>=0:${PORTSDIR}/devel/rubygem-highline \
		rubygem-net-scp>=1.0.0:${PORTSDIR}/security/rubygem-net-scp \
	  	rubygem-net-sftp>=2.0.0:${PORTSDIR}/security/rubygem-net-sftp \
		rubygem-net-ssh>=2.0.14:${PORTSDIR}/security/rubygem-net-ssh \
		rubygem-net-ssh-gateway>=1.1.0:${PORTSDIR}/security/rubygem-net-ssh-gateway

USE_RUBY=	yes
USE_RAKE=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/cap bin/capify

NO_STAGE=	yes
post-install:
	@${ECHO_MSG} "======================================================================"
	@${ECHO_MSG}
	@${ECHO_MSG} "If upgrading/switching from SwitchTower to Capistrano, be sure to:"
	@${ECHO_MSG} " - pkg_delete ${PKG_DBDIR}/rubygem-switchtower-*"
	@${ECHO_MSG} " - for all Rails projects, execute \"cap -A .\", keeping deploy.rb"
	@${ECHO_MSG} " - for all Rails projects, remove lib/tasks/switchtower.rake"
	@${ECHO_MSG}
	@${ECHO_MSG} "======================================================================"

.include <bsd.port.mk>
