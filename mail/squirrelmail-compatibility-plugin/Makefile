# Created by: Alexander Wittig <alexander@wittig.name>
# $FreeBSD$

PORTNAME=	compatibility
PORTVERSION=	2.0.16
CATEGORIES=	mail www
MASTER_SITES=	http://www.squirrelmail.org/plugins/
PKGNAMEPREFIX=	squirrelmail-
PKGNAMESUFFIX=	-plugin
DISTNAME=	${PORTNAME}-${PORTVERSION}-1.0
DIST_SUBDIR=	squirrelmail

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Required by many plugins for compatibility with SquirrelMail

USES=		perl5
USE_PERL5=	run

CONFLICTS=	squirrelmail-compatibility-plugin-1.*

NO_STAGE=	yes
.include "${.CURDIR}/../squirrelmail/bsd.squirrelmail.mk"
.include <bsd.port.mk>
