# Created by: Zach Thompson <hideo@lastamericanempire.com>
# $FreeBSD$

PORTNAME=	Rose-DB
PORTVERSION=	0.771
PORTEPOCH=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JSIRACUSA
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DBI wrapper and abstraction layer

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Bit-Vector>=6.4:${PORTSDIR}/math/p5-Bit-Vector \
		p5-Clone-PP>=0:${PORTSDIR}/devel/p5-Clone-PP \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Format-MySQL>=0:${PORTSDIR}/devel/p5-DateTime-Format-MySQL \
		p5-DateTime-Format-Oracle>=0:${PORTSDIR}/devel/p5-DateTime-Format-Oracle \
		p5-DateTime-Format-Pg>=0.11:${PORTSDIR}/devel/p5-DateTime-Format-Pg \
		p5-Rose-DateTime>=0.532,1:${PORTSDIR}/devel/p5-Rose-DateTime \
		p5-Rose-Object>=0.854:${PORTSDIR}/devel/p5-Rose-Object \
		p5-SQL-ReservedWords>=0:${PORTSDIR}/databases/p5-SQL-ReservedWords \
		p5-Time-Clock>=0:${PORTSDIR}/devel/p5-Time-Clock \
		p5-YAML-Syck>=0:${PORTSDIR}/textproc/p5-YAML-Syck
RUN_DEPENDS:=	${BUILD_DEPENDS}

PORTSCOUT=	skipv:0.7591

USES=		perl5
USE_PERL5=	configure

MAN3=		Rose::DB.3 \
		Rose::DB::Cache.3 \
		Rose::DB::Cache::Entry.3 \
		Rose::DB::Constants.3 \
		Rose::DB::Generic.3 \
		Rose::DB::Informix.3 \
		Rose::DB::MySQL.3 \
		Rose::DB::Oracle.3 \
		Rose::DB::Pg.3 \
		Rose::DB::Registry.3 \
		Rose::DB::Registry::Entry.3 \
		Rose::DB::SQLite.3 \
		Rose::DB::Tutorial.3

NO_STAGE=	yes
.include <bsd.port.mk>
