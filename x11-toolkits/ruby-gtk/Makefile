# Created by: Yasuhiro Fukuma <yasuf@big.or.jp>
# $FreeBSD$

PORTNAME=	gtk
PORTVERSION=	${RUBY_GNOME_PORTVERSION}
PORTREVISION=	4
CATEGORIES=	x11-toolkits ruby
MASTER_SITES=	${RUBY_GNOME_MASTER_SITES}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${RUBY_GNOME_DISTNAME}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for GTK+

DEPRECATED=	Does not work with Ruby 1.9
EXPIRATION_DATE=	2013-10-10

USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes
USE_XORG=	x11
USE_GNOME=	gtk12

BROKEN=		fails to build

RUBY_GNOME_VERSION=		0.34
#RUBY_GNOME_SNAPSHOTDATE=	20010224
.if defined(RUBY_GNOME_SNAPSHOTDATE)
RUBY_GNOME_PORTVERSION=		${RUBY_GNOME_VERSION}.${RUBY_GNOME_SNAPSHOTDATE}
.else
RUBY_GNOME_PORTVERSION=		${RUBY_GNOME_VERSION}
.endif
RUBY_GNOME_MASTER_SITES=	SF/ruby-gnome/ruby-gnome/${PORTVERSION}
RUBY_GNOME_DISTNAME=		ruby-gnome-all-${RUBY_GNOME_VERSION}

.if defined(RUBY_GNOME_SNAPSHOTDATE)
RUBY_GNOME_WRKSRC=	${WRKDIR}/ruby-gnome-snapshot-${RUBY_GNOME_SNAPSHOTDATE}
.else
RUBY_GNOME_WRKSRC=	${WRKDIR}/${RUBY_GNOME_DISTNAME}
.endif

WRKSRC=		${RUBY_GNOME_WRKSRC}/${PORTNAME}
CONFIGURE_ARGS=	--with-gtk-config=${GTK_CONFIG}
INSTALL_TARGET=	site-install

DOCS_EN=	BUGS \
		ChangeLog \
		NEWS \
		README \
		README.EXT \
		ToDo
DOCS_JA=	README.EXT.ja

NO_STAGE=	yes
post-extract:
	${FIND} ${WRKSRC} -name CVS -type d -print0 | ${XARGS} -0 ${RM} -rf
	${MKDIR} ${WRKSRC}/sample/browser
	${MV} ${WRKSRC}/doc/*.rb ${WRKSRC}/sample/browser/

post-install:
	${INSTALL_DATA} ${WRKSRC}/lib/gtkcompat.rb ${RUBY_SITELIBDIR}/
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODEXAMPLESDIR}
	${CP} -R ${WRKSRC}/sample/* ${RUBY_MODEXAMPLESDIR}/
	${MKDIR} ${RUBY_MODDOCDIR}/ja
.for f in ${DOCS_EN}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.for f in ${DOCS_JA}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/ja/
.endfor
.endif

.include <bsd.port.pre.mk>
.if ${RUBY_VER} == 1.9
BROKEN=	does not build with ruby 1.9
.endif
.include <bsd.port.post.mk>
