# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	memcache
PORTVERSION=	0.0.4
CATEGORIES=	databases ruby
MASTER_SITES=	http://www.deveiate.org/code/
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	Ruby-MemCache-${PORTVERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A memcached client library for Ruby

DEPRECATED=	Development has been abandoned upstream
EXPIRATION_DATE=	2013-11-01

BUILD_DEPENDS=	${RUBY_SITELIBDIR}/io/reactor.rb:${PORTSDIR}/devel/ruby-io-reactor
RUN_DEPENDS=	${RUBY_SITELIBDIR}/io/reactor.rb:${PORTSDIR}/devel/ruby-io-reactor

USE_RUBY=	yes

NO_BUILD=	yes

DOCS=		README

NO_STAGE=	yes
do-install:
	cd ${WRKSRC}; ${RUBY} install.rb
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODDOCDIR}
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.endif

.include <bsd.port.mk>
