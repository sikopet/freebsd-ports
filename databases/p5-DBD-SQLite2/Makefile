# Created by: nork@cityfujisawa.ne.jp
# $FreeBSD$

PORTNAME=	DBD-SQLite2
PORTVERSION=	0.36
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Provides access to SQLite2 databases through the DBI

BUILD_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI
RUN_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI

USES=		perl5
USE_PERL5=	configure

MAN3=		DBD::SQLite2.3

NO_STAGE=	yes
post-extract:
	${RM} -f ${WRKSRC}/getsqlite.pl

.include <bsd.port.mk>
