# Created by: Nick Sayer <nsayer@FreeBSD.org>
# $FreeBSD$

PORTNAME=	unixODBC
PORTVERSION=	2.3.1
CATEGORIES=	databases
MASTER_SITES=	http://www.unixodbc.org/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	ODBC library suite for Unix

CONFLICTS=	libiodbc-[0-9]*

USES=		iconv
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-static --enable-shared \
		${ICONV_CONFIGURE_ARG}
USE_LDCONFIG=	yes

PORTDOCS=	*

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} 's,$$LIBS $$THREADLIB,$$LIBS,;s,$$CFLAGS -pthread,$$CFLAGS,' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's,@MSQL_TRUE@lib_LTLIBRARIES,#&,' \
		${WRKSRC}/Drivers/MiniSQL/Makefile.in

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${TAR} -C ${WRKSRC}/doc --exclude '*Makefile*' -cf - . \
		| ${TAR} -C ${DOCSDIR} --unlink -xf -
.if !defined(INSTALL_AS_USER)
	@${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${DOCSDIR}
	${FIND} ${DOCSDIR} -type d -print0 | ${XARGS} -0 ${CHMOD} 755
	${FIND} ${DOCSDIR} -type f -print0 | ${XARGS} -0 ${CHMOD} 644
.endif
.endif

.include <bsd.port.mk>
