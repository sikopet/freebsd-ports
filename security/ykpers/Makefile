# $FreeBSD$

PORTNAME=	ykpers
PORTVERSION=	1.12.0
CATEGORIES=	security
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	matt@mjslabs.com
COMMENT=	Library and tool for personalization of Yubico's YubiKey

LICENSE=	BSD

LIB_DEPENDS=	yubikey:${PORTSDIR}/security/libyubikey

GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USES=		pkgconfig

MAN1=		ykchalresp.1 \
		ykinfo.1 \
		ykpersonalize.1
PLIST_FILES=	bin/ykchalresp \
		bin/ykinfo \
		bin/ykpersonalize \
		include/ykpers-1/ykcore.h \
		include/ykpers-1/ykdef.h \
		include/ykpers-1/ykpbkdf2.h \
		include/ykpers-1/ykpers.h \
		include/ykpers-1/ykpers-version.h \
		include/ykpers-1/ykstatus.h \
		lib/libykpers-1.a \
		lib/libykpers-1.la \
		lib/libykpers-1.so \
		lib/libykpers-1.so.13 \
		libdata/pkgconfig/ykpers-1.pc
PLIST_DIRS=	include/ykpers-1

PROJECTHOST=	yubikey-personalization

MAKE_JOBS_UNSAFE=yes

LDFLAGS+=	-L/usr/lib

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|^pkgconfigdir = .*|pkgconfigdir = /usr/local/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.in

regression-test: build
	@(cd ${WRKSRC}; ${MAKE} check)

.include <bsd.port.mk>
