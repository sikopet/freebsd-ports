# Created by: Fernan Aguero <fernan@iib.unsam.edu.ar>
# $FreeBSD$

PORTNAME=	SVG-Graph
PORTVERSION=	0.04
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:CJFIELDS
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Visualize your data in Scalable Vector Graphics (SVG) format

BUILD_DEPENDS=	p5-Math-Spline>=0:${PORTSDIR}/math/p5-Math-Spline \
		p5-SVG>=0:${PORTSDIR}/textproc/p5-SVG \
		p5-Statistics-Descriptive>=0:${PORTSDIR}/math/p5-Statistics-Descriptive \
		p5-Tree-DAG_Node>=0:${PORTSDIR}/devel/p5-Tree-DAG_Node
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		SVG::Graph.3 \
		SVG::Graph::Data.3 \
		SVG::Graph::Data::Datum.3 \
		SVG::Graph::Data::Node.3 \
		SVG::Graph::Data::Tree.3 \
		SVG::Graph::File.3 \
		SVG::Graph::Frame.3 \
		SVG::Graph::Glyph.3 \
		SVG::Graph::Glyph::axis.3 \
		SVG::Graph::Glyph::bar.3 \
		SVG::Graph::Glyph::barflex.3 \
		SVG::Graph::Glyph::bezier.3 \
		SVG::Graph::Glyph::bubble.3 \
		SVG::Graph::Glyph::heatmap.3 \
		SVG::Graph::Glyph::line.3 \
		SVG::Graph::Glyph::pictogram.3 \
		SVG::Graph::Glyph::scatter.3 \
		SVG::Graph::Glyph::tree.3 \
		SVG::Graph::Glyph::wedge.3

NO_STAGE=	yes
.include <bsd.port.mk>
