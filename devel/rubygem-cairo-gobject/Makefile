# $FreeBSD$

PORTNAME=	cairo-gobject
PORTVERSION=	2.0.2
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for cairo-gobject

RUN_DEPENDS=	rubygem-cairo>=1.12.5:${PORTSDIR}/graphics/rubygem-cairo \
		rubygem-glib2>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-glib2

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

NO_STAGE=	yes
.include <bsd.port.mk>
