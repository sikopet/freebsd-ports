# Created by: Stephen Montgomery-Smith <stephen@math.missouri.edu>
# $FreeBSD$

PORTNAME=	octave-forge-mechanics
PORTVERSION=	1.3.1
CATEGORIES=	math

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Octave-forge package ${OCTAVE_PKGNAME}

RUN_DEPENDS+=	${TARBALLS_DIR}/general.tar.gz:${PORTSDIR}/math/octave-forge-general
RUN_DEPENDS+=	${TARBALLS_DIR}/geometry.tar.gz:${PORTSDIR}/math/octave-forge-geometry
RUN_DEPENDS+=	${TARBALLS_DIR}/linear-algebra.tar.gz:${PORTSDIR}/math/octave-forge-linear-algebra

# OCTSRC is the name of the directory of the package.
# It is usually ${OCTAVE_PKGNAME} or ${DISTNAME}.
OCTSRC=		${OCTAVE_PKGNAME}

WRKSRC=		${WRKDIR}/${OCTSRC}/inst/molecularDynamics/src

NO_STAGE=	yes
.include "${.CURDIR}/../../Mk/bsd.octave.mk"

post-build:
	${RM} -f ${WRKSRC}/Makefile ${WRKSRC}/configure
	cd ${WRKDIR} && ${TAR} cfz ${DISTNAME}.tar.gz ${OCTSRC}

.include <bsd.port.mk>
