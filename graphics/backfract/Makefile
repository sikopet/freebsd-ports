# Created by: Patrick Gardella <patrick@FreeBSD.org>
# $FreeBSD$

PORTNAME=	backfract
PORTVERSION=	1.1.2
PORTREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	http://www.igoweb.org/~wms/comp/backfract/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fractal image animated wallpaper program

LICENSE=	GPLv2 # (or later)

USE_XORG=	x11
GNU_CONFIGURE=	yes
ALL_TARGET=	# none
MAKE_JOBS_UNSAFE=	yes

PLIST_FILES=	bin/backfract

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e \
		"/'-O3'/s|^|#| ; \
		 /'-O'/s|^|#| ; \
		 s|linux/soundcard.h|sys/soundcard.h|" ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/backfract ${PREFIX}/bin

.include <bsd.port.mk>
