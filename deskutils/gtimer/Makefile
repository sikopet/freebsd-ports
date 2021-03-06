# Created by: Chris Piazza <cpiazza@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gtimer
PORTVERSION=	2.0.0
PORTREVISION=	2
CATEGORIES=	deskutils
MASTER_SITES=	SF/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Timer for your personal activities

LICENSE=	GPLv2

RUN_DEPENDS=	xdg-open:${PORTSDIR}/devel/xdg-utils

USE_XORG=	xscrnsaver
USE_GNOME=	gtk20
USES=		gettext perl5 gmake pkgconfig
GNU_CONFIGURE=	yes

MAN1=		${PORTNAME}.1

CPPFLAGS+=	-I${LOCALBASE}/include -Wno-return-type
LDFLAGS+=	-L${LOCALBASE}/lib

NO_STAGE=	yes
post-patch:
	@${REINPLACE_CMD} -e 's|1.1.7|${PORTVERSION}|g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|"sensible-browser"|"xdg-open"|g' ${WRKSRC}/config.h
.for file in project.c task.c
	@${REINPLACE_CMD} -e 's|<malloc\.h>|<stdlib.h>|g' ${WRKSRC}/${file}
.endfor

pre-build:
	@(cd ${WRKSRC} && ${PERL} ./txt2h.pl < ChangeLog > changelog.h)

post-build:
.for lang in cs cz es fr sv
	cd ${WRKSRC}/po && ${LOCALBASE}/bin/msgfmt -o ${lang}.mo ${lang}.po
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MANPREFIX}/man/man1
.for lang in cs cz es fr sv
	@${MKDIR} ${PREFIX}/share/locale/${lang}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/${lang}.mo \
		${PREFIX}/share/locale/${lang}/LC_MESSAGES/${PORTNAME}.mo
.endfor

.include <bsd.port.mk>
