# Created by: MANTANI Nobutaka <nobutaka@FreeBSD.org>
# $FreeBSD$

PORTNAME=	dc3dd
PORTVERSION=	7.1.614
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/7.1.0

MAINTAINER=	nobutaka@FreeBSD.org
COMMENT=	A dd program useful for computer forensics

USE_BZIP2=	yes
USES=		gettext iconv
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="${LIBS} -L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

MAN1=		dc3dd.1

NO_STAGE=	yes
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
