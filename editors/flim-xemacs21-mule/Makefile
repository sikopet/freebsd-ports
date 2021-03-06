# Created by: Shigeyuki FUKUSHIMA <shige@FreeBSD.org>
# $FreeBSD$

MAINTAINER=	nobutaka@FreeBSD.org

# This is a slave port.
PORTCLASS=	slave

MASTERDIR=	${.CURDIR}/../../editors/flim
COMMENT=	FLIM, message representation or encoding elisp library for xemacs21-mule

MANUAL_PACKAGE_BUILD=	yes

# emacs port setup
USE_EMACS=	yes
EMACS_PORT_NAME=	xemacs21-mule
EMACS_PACKAGESDIR=	${EMACS_LIBDIR}/site-packages
# packages-subdirectories which this port requires
EMACS_PACKAGES_SUBDIRS=	info lisp man pkginfo

SCRIPTS_ENV=	EMACS_PACKAGESDIR=${EMACS_PACKAGESDIR}
PLIST_SUB=	EMACS_PACKAGESDIR=${EMACS_PACKAGESDIR}

# how to make and install
ALL_TARGET=	package
INSTALL_TARGET=	install-package

# whether building info files by emacs or makeinfo
BUILD_INFO_BY_EMACS=	YES
# texinfo packages
BUILD_DEPENDS+=	${LOCALBASE}/${EMACS_LIBDIR}/xemacs-packages/lisp/texinfo/texinfmt.el:${PORTSDIR}/editors/xemacs-packages

# package info manifest
MANIFEST=	MANIFEST.flim

# xemacs package
XEMACS_PKGNAME=	flim
XEMACS_PKGVER=	1.14
#XEMACS_PKGVER!=	grep version ${.CURDIR}/../flim-emacs/files/_pkg.el | \
#		sed 's/.*:version \([0-9.]*\).*/\1/'
XEMACS_PKG_TARBALL=	${XEMACS_PKGNAME}-${XEMACS_PKGVER}-pkg.tar.gz
XEMACS_PKG_CONTENTS=	pkginfo/${MANIFEST} lisp/${XEMACS_PKGNAME} \
			info/mime-en.info info/mime-ja.info \
			man/${XEMACS_PKGNAME}

# package documents
FLIMDOCDIR=	${EMACS_PACKAGESDIR}/lisp/flim

xemacs-package: install
	@${RM} -f ${.CURDIR}/${XEMACS_PKG_TARBALL}
	@(cd ${LOCALBASE}/${EMACS_PACKAGESDIR} ;\
	  ${TAR} -zcf ${.CURDIR}/${XEMACS_PKG_TARBALL} ${XEMACS_PKG_CONTENTS} ;\
	)

NO_STAGE=	yes
.include "${MASTERDIR}/Makefile"
