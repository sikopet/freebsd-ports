# Created by: Choi Jun Ho <junker@moderato.snu.ac.kr>
# $FreeBSD$

PORTNAME=	splay
PORTVERSION=	0.9.5.2
CATEGORIES=	audio
MASTER_SITES=	http://splay.sourceforge.net/tgz/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Audio player that decodes MPEG Layer 1/2/3 and WAV files

GNU_CONFIGURE=	yes

NO_STAGE=	yes
MAN1=		splay.1
PLIST_FILES=	bin/splay

# XXX: pthread library can be used, but sound quality is buggy(?)

.include <bsd.port.mk>
