# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD$

PORTNAME=	LaTeX-Driver
PORTVERSION=	0.12
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module of LaTeX Driver

BUILD_DEPENDS=	p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp \
		p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_TEX=	latex
USES=		perl5
USE_PERL5=	configure

MAN1=	latex2ps.1 latex2pdf.1 latex2dvi.1
MAN3=	LaTeX::Driver.3 \
	LaTeX::Driver::Paths.3 \
	LaTeX::Driver::FilterProgram.3

NO_STAGE=	yes
.include <bsd.port.pre.mk>
post-extract:
	@${REINPLACE_CMD} -e 's#<STDIN>#"\r"#g' ${WRKSRC}/Makefile.PL

.include <bsd.port.post.mk>
