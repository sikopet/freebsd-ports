# Created by: Denis Shaposhnikov <dsh@vlink.ru>
# $FreeBSD$

PORTNAME=	qico
PORTVERSION=	0.49.10.3
CATEGORIES=	comms
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-0.49.10-p3
DISTNAME=	${PORTNAME}-0.49.10-p3

MAINTAINER=	dsh@vlink.ru
COMMENT=	An FidoNet Technology Network (FTN) compatible mailer for Unix systems

USE_BZIP2=	yes
GNU_CONFIGURE=	yes

.if defined(WITH_QICO_AMIGA4D)
CONFIGURE_ARGS+=	--enable-aso
.endif

.if defined(WITH_QICO_MORDA)
PLIST_SUB+=	WITH_QICO_MORDA=""
.else
CONFIGURE_ARGS+=	--disable-qcc
PLIST_SUB+=	WITH_QICO_MORDA="@comment "
.endif

NO_STAGE=	yes
do-install:
	${INSTALL_DATA} ${WRKSRC}/qico.conf.sample ${PREFIX}/etc/
	${INSTALL_PROGRAM} ${WRKSRC}/src/qico ${PREFIX}/libexec/
.if defined(WITH_QICO_MORDA)
	${INSTALL_PROGRAM} ${WRKSRC}/src/qcc ${PREFIX}/bin/
.endif

.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/qico
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/qico/FAQ.ru
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qico/README.ru
.endif

.include <bsd.port.mk>
