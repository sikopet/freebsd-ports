# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD$

PORTNAME=	rudy
PORTVERSION=	0.9.8.020
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	swills@FreeBSD.org
COMMENT=	EC2 deployment tool

RUN_DEPENDS=	rubygem-amazon-ec2>=0.9.10:${PORTSDIR}/net/rubygem-amazon-ec2 \
		rubygem-aws-s3>=0.6.1:${PORTSDIR}/net/rubygem-aws-s3 \
		rubygem-annoy>=0.5.6:${PORTSDIR}/devel/rubygem-annoy \
		rubygem-attic>=0.5.3:${PORTSDIR}/devel/rubygem-attic \
		rubygem-caesars>=0.7.4:${PORTSDIR}/devel/rubygem-caesars \
		rubygem-drydock>=0.6.9:${PORTSDIR}/devel/rubygem-drydock \
		rubygem-highline>=1.5.1:${PORTSDIR}/devel/rubygem-highline \
		rubygem-gibbler>=0.8.9:${PORTSDIR}/devel/rubygem-gibbler \
		rubygem-rye>=0.9.3:${PORTSDIR}/net/rubygem-rye \
		rubygem-storable>=0.8.6:${PORTSDIR}/devel/rubygem-storable \
		rubygem-sysinfo>=0.7.3:${PORTSDIR}/devel/rubygem-sysinfo

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/rudy bin/rudy-ec2 bin/rudy-s3 bin/rudy-sdb

NO_STAGE=	yes
.include <bsd.port.mk>
