# Created by: Eric Anholt <anholt@FreeBSD.org>
# $FreeBSD$

PORTNAME=	imake
PORTVERSION=	1.0.6
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Imake and other utilities from X.Org

BUILD_DEPENDS=	tradcpp:${PORTSDIR}/devel/tradcpp
RUN_DEPENDS=	gccmakedep:${PORTSDIR}/devel/gccmakedep \
		makedepend:${PORTSDIR}/devel/makedepend \
		${LOCALBASE}/lib/X11/config/xorg.cf:${PORTSDIR}/x11/xorg-cf-files

USES=	shebangfix perl5
USE_PERL5=	run

SHEBANG_FILES=	mkhtmlindex.pl

XORG_CAT=	util
USE_XORG=	xproto

CONFIGURE_ENV=	ac_cv_path_RAWCPP=tradcpp

MAN1=		ccmakedep.1 \
		cleanlinks.1 \
		imake.1 \
		makeg.1 \
		mergelib.1 \
		mkdirhier.1 \
		mkhtmlindex.1 \
		revpath.1 \
		xmkmf.1

NO_STAGE=	yes
.include <bsd.port.mk>
