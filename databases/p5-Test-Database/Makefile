# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD$

PORTNAME=	Test-Database
PORTVERSION=	1.11
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Database handles ready for testing

BUILD_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-YAML-Tiny>=0:${PORTSDIR}/textproc/p5-YAML-Tiny \
		p5-File-HomeDir>=0.84:${PORTSDIR}/devel/p5-File-HomeDir \
		p5-version>=0.76:${PORTSDIR}/devel/p5-version
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Test::Database.3 Test::Database::Driver.3 \
		Test::Database::Driver::CSV.3 \
		Test::Database::Driver::DBM.3 \
		Test::Database::Driver::Pg.3 \
		Test::Database::Driver::SQLite.3 \
		Test::Database::Driver::SQLite2.3 \
		Test::Database::Driver::mysql.3 \
		Test::Database::Handle.3 \
		Test::Database::Tutorial.3 \
		Test::Database::Util.3

NO_STAGE=	yes
.include <bsd.port.mk>
