# Created by: Yuan-Chung Hsiao & <ychsiao@ychsiao.org>
# $FreeBSD$

PORTNAME=	Log-Accounting-SVN
PORTVERSION=	0.01
PORTREVISION=	10
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	Perl module for accounting SVN repository

BUILD_DEPENDS=	p5-subversion>=0:${PORTSDIR}/devel/p5-subversion \
		p5-SVN-Log>=0:${PORTSDIR}/devel/p5-SVN-Log \
		p5-Algorithm-Accounting>=0:${PORTSDIR}/devel/p5-Algorithm-Accounting \
		p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Log::Accounting::SVN.3

NO_STAGE=	yes
.include <bsd.port.mk>
