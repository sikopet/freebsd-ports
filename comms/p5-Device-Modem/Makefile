# Created by: Anders Nordby <anders@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Device-Modem
PORTVERSION=	1.56
CATEGORIES=	comms perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl class to interface generic modems (AT-compliant)

BUILD_DEPENDS=	p5-Device-SerialPort>=0:${PORTSDIR}/comms/p5-Device-SerialPort
RUN_DEPENDS=	p5-Device-SerialPort>=0:${PORTSDIR}/comms/p5-Device-SerialPort

USES=		perl5
USE_PERL5=	configure

MAN3=		Device::Modem.3 \
		Device::Modem::FAQ.3 \
		Device::Modem::Log::File.3 \
		Device::Modem::Log::Syslog.3 \
		Device::Modem::Protocol::Xmodem.3 \
		Device::Modem::UsRobotics.3

NO_STAGE=	yes
post-install:
.ifndef(NOPORTEXAMPLES)
	@${ECHO_MSG} "===>   Installing examples for ${PKGNAME}"
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.pl ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
