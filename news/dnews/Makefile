# Created by: Andreas Klemm <andreas@klemm.gtn.com>
# $FreeBSD$

PORTNAME=	dnews
PORTVERSION=	5.7b1
PORTREVISION=	1
CATEGORIES=	news
MASTER_SITES=	ftp://ftp.netwinsite.com/pub/dnews/
DISTNAME=	dnews_57b1_freebsd4
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Commercial nntp server with enhancements over inn and cnews

WRKSRC=		${WRKDIR}/dtemp
RESTRICTED=	only free for non-profit organisations
IS_INTERACTIVE=	yes
ONLY_FOR_ARCHS=	i386
NO_BUILD=	yes

NO_STAGE=	yes
post-configure:
	@${REINPLACE_CMD} -e "s|df -k|/bin/df -k|" ${WRKSRC}/dnews.conf
	@${REINPLACE_CMD} -e "s|lib/sendmail|sbin/sendmail|" ${WRKSRC}/dnews.conf

do-install:
	@( cd ${WRKSRC}; ./dnews_setup )
	@${ECHO_MSG} "Installing dnews startup script as ${PREFIX}/etc/rc.d/dnews.sh"
	@${INSTALL_SCRIPT} ${FILESDIR}/dnews.sh ${PREFIX}/etc/rc.d/dnews.sh
	@${INSTALL_DATA} ${FILESDIR}/faq.html ${PREFIX}/dnews/faq.html

post-install:
	@${MV} /etc/dnews.conf ${PREFIX}/etc/dnews.conf
	@${LN} -s ${PREFIX}/etc/dnews.conf /etc/dnews.conf
	@${ECHO_MSG} "*** DNEWS is NOT free, please read the LICENSE file:"
	@${ECHO_MSG} "***	${PREFIX}/dnews/license.txt"
	@${ECHO_MSG} "*** The main configuration file is:"
	@${ECHO_MSG} "***	${PREFIX}/etc/dnews.conf"

.include <bsd.port.mk>
