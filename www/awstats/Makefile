# Created by: Munish Chopra <mchopra@engmail.uwaterloo.ca>
# $FreeBSD$

PORTNAME=	awstats
PORTVERSION=	7.2
PORTEPOCH=	1
CATEGORIES=	www
MASTER_SITES=	SF/${PORTNAME}/AWStats/${PORTVERSION}

MAINTAINER=	samm@os2.kiev.ua
COMMENT=	Free real-time logfile analyzer to get advanced web statistics

LICENSE=	GPLv2

RUN_DEPENDS=	p5-Net-XWhois>=0:${PORTSDIR}/net/p5-Net-XWhois

USES=		perl5
NO_BUILD=	yes
USE_PERL5=	run
USE_DOS2UNIX=	tools/*.pl \
		wwwroot/cgi-bin/awstats.model.conf \
		wwwroot/cgi-bin/*.pl \
		wwwroot/cgi-bin/lang/tooltips_f/*.txt \
		wwwroot/cgi-bin/lang/tooltips_m/*.txt \
		wwwroot/cgi-bin/lang/tooltips_w/*.txt \
		wwwroot/cgi-bin/lang/*.txt \
		wwwroot/cgi-bin/lib/* \
		wwwroot/cgi-bin/plugins/*.pm \
		wwwroot/cgi-bin/plugins/example/* \
		wwwroot/css/* \
		wwwroot/js/*

SUB_FILES=	pkg-message

OPTIONS_DEFINE=	DOCS IPV6

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MIPV6}
RUN_DEPENDS+=	p5-Net-IP>=0:${PORTSDIR}/net-mgmt/p5-Net-IP
RUN_DEPENDS+=	p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/tools/awstats_buildstaticpages.pl
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/tools/awstats_configure.pl
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/tools/awstats_updateall.pl
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/wwwroot/cgi-bin/awstats.pl

do-install:
	@${MKDIR} ${PREFIX}/www/awstats
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/lang
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_f
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_m
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_w
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/lib
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/plugins
	@${MKDIR} ${PREFIX}/www/awstats/cgi-bin/plugins/example
	@${MKDIR} ${PREFIX}/www/awstats/classes
	@${MKDIR} ${PREFIX}/www/awstats/css
	@${MKDIR} ${PREFIX}/www/awstats/icons/browser
	@${MKDIR} ${PREFIX}/www/awstats/icons/clock
	@${MKDIR} ${PREFIX}/www/awstats/icons/cpu
	@${MKDIR} ${PREFIX}/www/awstats/icons/flags
	@${MKDIR} ${PREFIX}/www/awstats/icons/mime
	@${MKDIR} ${PREFIX}/www/awstats/icons/os
	@${MKDIR} ${PREFIX}/www/awstats/icons/other
	@${MKDIR} ${PREFIX}/www/awstats/js
	@${MKDIR} ${PREFIX}/www/awstats/tools
	@${MKDIR} ${PREFIX}/www/awstats/tools/webmin
	@${MKDIR} ${PREFIX}/www/awstats/tools/xslt
	${INSTALL_SCRIPT} ${WRKSRC}/tools/awstats_buildstaticpages.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/awstats_configure.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/awstats_exportlib.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/awstats_updateall.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/logresolvemerge.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/maillogconvert.pl ${PREFIX}/www/awstats/tools
	${INSTALL_SCRIPT} ${WRKSRC}/tools/urlaliasbuilder.pl ${PREFIX}/www/awstats/tools
	${INSTALL_DATA} ${WRKSRC}/tools/xslt/* ${PREFIX}/www/awstats/tools/xslt
	${INSTALL_SCRIPT} ${WRKSRC}/wwwroot/cgi-bin/awredir.pl ${PREFIX}/www/awstats/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/wwwroot/cgi-bin/awstats.model.conf ${PREFIX}/www/awstats/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/wwwroot/cgi-bin/awstats.pl ${PREFIX}/www/awstats/cgi-bin
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/lang/tooltips_f/*.txt ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_f
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/lang/tooltips_m/*.txt ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_m
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/lang/tooltips_w/*.txt ${PREFIX}/www/awstats/cgi-bin/lang/tooltips_w
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/lang/*.txt ${PREFIX}/www/awstats/cgi-bin/lang
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/lib/* ${PREFIX}/www/awstats/cgi-bin/lib
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/plugins/*.pm ${PREFIX}/www/awstats/cgi-bin/plugins
	${INSTALL_DATA} ${WRKSRC}/wwwroot/cgi-bin/plugins/example/* ${PREFIX}/www/awstats/cgi-bin/plugins/example
	${INSTALL_DATA} ${WRKSRC}/wwwroot/classes/awgraphapplet.jar ${PREFIX}/www/awstats/classes/awgraphapplet.jar
	${INSTALL_DATA} ${WRKSRC}/wwwroot/css/* ${PREFIX}/www/awstats/css
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/browser/* ${PREFIX}/www/awstats/icons/browser
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/clock/* ${PREFIX}/www/awstats/icons/clock
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/cpu/* ${PREFIX}/www/awstats/icons/cpu
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/flags/* ${PREFIX}/www/awstats/icons/flags
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/mime/* ${PREFIX}/www/awstats/icons/mime
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/os/* ${PREFIX}/www/awstats/icons/os
	${INSTALL_DATA} ${WRKSRC}/wwwroot/icon/other/* ${PREFIX}/www/awstats/icons/other
	${INSTALL_DATA} ${WRKSRC}/wwwroot/js/* ${PREFIX}/www/awstats/js
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}/images
	${INSTALL_DATA} ${WRKSRC}/docs/images/* ${DOCSDIR}/images
	${INSTALL_DATA} ${WRKSRC}/docs/*.* ${DOCSDIR}
.endif
	@${ECHO_CMD} ""
	@${ECHO_CMD} "* Use ${PREFIX}/www/awstats/tools/awstats_configure.pl to setup your hosts."
.if ${PORT_OPTIONS:MDOCS}
	@${ECHO_CMD} "* Documentation has been installed in ${PREFIX}/share/doc/awstats"
.endif
	@${ECHO_CMD} ""

.if !defined(BATCH)
post-install:
	@${CAT} ${PKGMESSAGE}
.endif

.include <bsd.port.post.mk>
