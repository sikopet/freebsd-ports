# Created by: ecronin@gizmolabs.org
# $FreeBSD$

PORTNAME=	nagios-certexp-plugin
PORTVERSION=	1.1
CATEGORIES=	net-mgmt
MASTER_SITES=	ftp://ftp.jhweiss.de/pub/users/weiss/nagios/plugins/
DISTNAME=	check_certexp.pl
EXTRACT_SUFX=

MAINTAINER=	ecronin@gizmolabs.org
COMMENT=	Nagios plugin for checking SSL server certificate expiration

RUN_DEPENDS+=	p5-Net-SSLeay>=0:${PORTSDIR}/security/p5-Net-SSLeay \
		p5-Date-Manip>=0:${PORTSDIR}/devel/p5-Date-Manip \
		p5-Getopt-Long>=0:${PORTSDIR}/devel/p5-Getopt-Long

USES=		perl5
NO_WRKSUBDIR=	yes
NO_BUILD=	yes
PLIST_FILES=	${NAGIOS_PLUGIN_DIR}/check_certexp.pl
PLIST_DIRS=	${NAGIOS_PLUGIN_DIR}

NAGIOS_PLUGIN_DIR=	libexec/nagios

NO_STAGE=	yes
do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${DISTDIR}/${DISTNAME} ${WRKSRC}/check_certexp.pl

post-patch:
	${REINPLACE_CMD} -e \
		"s,/usr/local/nagios/libexec,${PREFIX}/${NAGIOS_PLUGIN_DIR}," \
		${WRKSRC}/check_certexp.pl

do-install:
	${MKDIR} ${PREFIX}/${NAGIOS_PLUGIN_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/check_certexp.pl ${PREFIX}/${NAGIOS_PLUGIN_DIR}

.include <bsd.port.mk>
