# Created by: dbader@eece.unm.edu
# $FreeBSD$

PORTNAME=	bibview
PORTVERSION=	2.2
PORTREVISION=	2
CATEGORIES=	print databases
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR= biblio/bibtex/utils/bibview-2.0

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphical interface for manipulating BibTeX bibliography databases


USES=		imake
USE_XORG=	ice sm x11 xaw xext xmu xt
WRKSRC=		${WRKDIR}/bibview-${PORTVERSION}
MAN1=		bibview.1

NO_STAGE=	yes
.include <bsd.port.mk>
