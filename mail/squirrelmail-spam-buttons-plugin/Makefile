# Created by: Ion-Mihai "IOnut" Tetcu <itetcu@FreeBSD.org>
# $FreeBSD$

PORTNAME=	spam-buttons
PORTVERSION=	2.3.1
DISTNAME=	${SQUIRREL_PLUGIN_NAME}-${PORTVERSION}-1.4.0
DIST_SUBDIR=	squirrelmail

MAINTAINER=	itetcu@FreeBSD.org
COMMENT=	Provides buttons with customizable action (for reporting spam, etc.)

USE_SM_COMPAT=	yes
USES=		perl5
USE_PERL5=	run

SQUIRREL_PLUGIN_NAME=	${PORTNAME:S/-/_/}

NO_STAGE=	yes
.include "${.CURDIR}/../squirrelmail/bsd.squirrelmail.mk"

post-extract:
	@${MV} ${WRKSRC}/${_SMSRCDIR}/config_example.php ${WRKSRC}/${_SMSRCDIR}/config.sample.php
	@${RM} ${WRKSRC}/${_SMSRCDIR}/README
.ifdef NOPORTDOCS
	@${RM} -R ${WRKSRC}/${_SMSRCDIR}/docs
.else
	@${MV} ${WRKSRC}/${_SMSRCDIR}/docs ${WRKSRC}/${_SMSRCDIR}/doc
.endif

.include <bsd.port.mk>
