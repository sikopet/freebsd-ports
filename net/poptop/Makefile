# Created by: Nick Sayer <nsayer@FreeBSD.org>
# $FreeBSD$

PORTNAME=	poptop
PORTVERSION=	1.3.4
PORTREVISION=	3
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/pptpd/pptpd-${PORTVERSION}
DISTNAME=	pptpd-${PORTVERSION:S/.b/-b/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Windows 9x compatible PPTP (VPN) server

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
MAKE_ARGS=	ACLOCAL="${TRUE}" AUTOCONF="${TRUE}" AUTOMAKE="${TRUE}" \
		AUTOHEADER="${TRUE}"

USE_RC_SUBR=	pptpd

MAN5=		pptpd.conf.5
MAN8=		pptpd.8 pptpctrl.8

.if !defined(WITH_KERNPPP)
CONFIGURE_ARGS+=	--with-bsdppp
.endif

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/pptpctrl.c
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/pptpd.8
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/pptpd.conf.5

post-install:
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf \
		${PREFIX}/etc/pptpd.conf.sample

.include <bsd.port.mk>
