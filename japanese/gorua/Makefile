# Created by: MANTANI Nobutaka <nobutaka@nobutaka.com>
# $FreeBSD$

PORTNAME=	gorua
PORTVERSION=	0.17
PORTREVISION=	3
CATEGORIES=	japanese
MASTER_SITES=	http://www.unixuser.org/~haruyama/software/goRua/
DISTNAME=	goRua-${PORTVERSION}

MAINTAINER=	nobutaka@FreeBSD.org
COMMENT=	Gtk+ on Ruby User Agent for 2ch BBS

DEPRECATED=	Does not work with Ruby 1.9
EXPIRATION_DATE=	2013-10-21

RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR}/gtk.so:${PORTSDIR}/x11-toolkits/ruby-gtk \
		${LOCALBASE}/lib/X11/fonts/local/mona6x12a.pcf.gz:${PORTSDIR}/japanese/monafonts

USE_BZIP2=	yes
USE_RUBY=	yes
USE_RUBY_FEATURES=	zlib

NO_BUILD=	yes

CONFIG_FILES=	board_info bookmarks config gtkrc

NO_STAGE=	yes
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/goRua.rb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/goRua_bookmarks_translator.rb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/goRua_cache_clean.rb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/goRua_url_updator.rb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/new_2ch_bbsmenu.rb ${PREFIX}/bin

	${INSTALL_DATA} ${WRKSRC}/goRua_color_table.rb ${RUBY_SITELIBDIR}
	${INSTALL_DATA} ${WRKSRC}/connect2ch.rb ${RUBY_SITELIBDIR}

.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/ja/goRua
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ja/goRua
.endif
	${MKDIR} ${PREFIX}/share/examples/goRua/dot.goRua_2ch
	${MKDIR} ${PREFIX}/share/examples/goRua/dot.goRua_2ch
	${MKDIR} ${PREFIX}/share/examples/goRua/dot.goRua_2ch/subject
	${MKDIR} ${PREFIX}/share/examples/goRua/dot.goRua_2ch/thread
.for f in ${CONFIG_FILES}
	${INSTALL_DATA} ${WRKSRC}/.goRua_2ch/${f} ${PREFIX}/share/examples/goRua/dot.goRua_2ch
.endfor

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
