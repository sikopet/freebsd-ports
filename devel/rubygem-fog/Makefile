# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD$

PORTNAME=	fog
PORTVERSION=	1.14.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby cloud services library

RUN_DEPENDS=	rubygem-builder>=0:${PORTSDIR}/devel/rubygem-builder \
		rubygem-excon>=0.25:${PORTSDIR}/devel/rubygem-excon \
		rubygem-formatador>=0.2.3:${PORTSDIR}/devel/rubygem-formatador \
		rubygem-mime-types>=0:${PORTSDIR}/misc/rubygem-mime-types \
		rubygem-multi_json>=1.0:${PORTSDIR}/devel/rubygem-multi_json \
		rubygem-net-scp>=1.1:${PORTSDIR}/security/rubygem-net-scp \
		rubygem-net-ssh>=2.1.3:${PORTSDIR}/security/rubygem-net-ssh \
		rubygem-nokogiri>=1.5.0:${PORTSDIR}/textproc/rubygem-nokogiri \
		rubygem-hmac>=0:${PORTSDIR}/security/rubygem-hmac

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/fog

NO_STAGE=	yes
.include <bsd.port.mk>
