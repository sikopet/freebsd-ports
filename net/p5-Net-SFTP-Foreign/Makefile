# Created by: Simun Mikecin <numisemis@yahoo.com>
# $FreeBSD$

PORTNAME=	Net-SFTP-Foreign
PORTVERSION=	1.73
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	numisemis@yahoo.com
COMMENT=	Net::SFTP::Foreign - Secure File Transfer Protocol client

BUILD_DEPENDS=	p5-Sort-Key>=0:${PORTSDIR}/devel/p5-Sort-Key
RUN_DEPENDS:=	${BUILD_DEPENDS}

TEST_DEPENDS=	p5-File-Which>=0:${PORTSDIR}/sysutils/p5-File-Which

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::SFTP::Foreign.3 \
		Net::SFTP::Foreign::Attributes.3 \
		Net::SFTP::Foreign::Attributes::Compat.3 \
		Net::SFTP::Foreign::Buffer.3 \
		Net::SFTP::Foreign::Compat.3 \
		Net::SFTP::Foreign::Constants.3 \
		Net::SFTP::Foreign::Local.3

NO_STAGE=	yes
.include <bsd.port.mk>
