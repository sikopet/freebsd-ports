# Created by: Marzhan Mykola <delgod@portaone.com>
# $FreeBSD$

PORTNAME=	libalarm
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN/Alarm
PKGNAMEPREFIX=	p5-

MAINTAINER=	delgod@portaone.com
COMMENT=	Allow multiple, queued alarms

USES=		perl5
USE_PERL5=	configure

MAN3=		Alarm::_TieSIG.3 \
		Alarm::Concurrent.3 \
		Alarm::Queued.3

NO_STAGE=	yes
post-patch:
	@${RM} ${WRKSRC}/lib/Alarm/Concurrent.pm.orig

.include <bsd.port.mk>
