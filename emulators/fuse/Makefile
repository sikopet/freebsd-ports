# Created by: Alexey V. Antipovsky <kemm@in-line.ru>
# $FreeBSD$

PORTNAME=	fuse
PORTVERSION=	1.1.1
CATEGORIES=	emulators
MASTER_SITES=	SF/${PORTNAME}-emulator/${PORTNAME}/${PORTVERSION}

MAINTAINER=	rene@FreeBSD.org
COMMENT=	Free Unix (Sinclair ZX-)Spectrum Emulator

LICENSE=	GPLv2

LIB_DEPENDS=	libspectrum.so:${PORTSDIR}/emulators/libspectrum \
		libpng15.so:${PORTSDIR}/graphics/png \
		libgcrypt.so:${PORTSDIR}/security/libgcrypt

GNU_CONFIGURE=	yes
USES=		pkgconfig
USE_GNOME=	libxml2 glib20 gtk20

CONFIGURE_ARGS+=--without-alsa --without-joystick
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib ${PTHREAD_LIBS}"
CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}

OPTIONS_DEFINE=	AO SAMPLERATE
OPTIONS_DEFAULT=	SAMPLERATE
AO_DESC=	Use libao for audio output
SAMPLERATE_DESC=	Better beeper sound quality

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MAO}
CONFIGURE_ARGS+=--with-libao
LIB_DEPENDS+=	libao.so:${PORTSDIR}/audio/libao
.else
CONFIGURE_ARGS+=--without-libao
.endif

.if ${PORT_OPTIONS:MSAMPLERATE}
LIB_DEPENDS+=	libsamplerate.so:${PORTSDIR}/audio/libsamplerate
.else
CONFIGURE_ARGS+=--without-libsamplerate
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} AUTHORS ChangeLog README THANKS \
		${STAGEDIR}${DOCSDIR}
.endif

.include <bsd.port.mk>
