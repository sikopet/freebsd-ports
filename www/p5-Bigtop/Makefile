# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	Bigtop
PORTVERSION=	0.38
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Web application data language processor

RUN_DEPENDS=	p5-Config-General>=0:${PORTSDIR}/devel/p5-Config-General \
		p5-IO-Prompt>=0:${PORTSDIR}/devel/p5-IO-Prompt \
		p5-Parse-RecDescent>=0:${PORTSDIR}/devel/p5-Parse-RecDescent \
		p5-File-HomeDir>=0:${PORTSDIR}/devel/p5-File-HomeDir \
		p5-DBIx-Class>=0:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-JSON>=0:${PORTSDIR}/converters/p5-JSON \
		p5-Gantry>=3.38:${PORTSDIR}/www/p5-Gantry \
		p5-Inline>=0.40:${PORTSDIR}/devel/p5-Inline \
		p5-Inline-TT>=0.06:${PORTSDIR}/devel/p5-Inline-TT \
		p5-Template-Toolkit>=2.0:${PORTSDIR}/www/p5-Template-Toolkit \
		p5-HTTP-Server-Simple>0.27:${PORTSDIR}/www/p5-HTTP-Server-Simple

IS_INTERACTIVE=	Asks about installing optional components

USES=		perl5
USE_PERL5=	modbuild

MAN1=		bigtop.1 \
		tentmaker.1
MAN3=		Bigtop.3 \
		Bigtop::Backend::CGI.3 \
		Bigtop::Backend::CGI::Gantry.3 \
		Bigtop::Backend::Conf.3 \
		Bigtop::Backend::Conf::Gantry.3 \
		Bigtop::Backend::Conf::General.3 \
		Bigtop::Backend::Control.3 \
		Bigtop::Backend::Control::Gantry.3 \
		Bigtop::Backend::Diagram::GraphvizSql.3 \
		Bigtop::Backend::HttpdConf.3 \
		Bigtop::Backend::HttpdConf::Gantry.3 \
		Bigtop::Backend::Init::Std.3 \
		Bigtop::Backend::Model.3 \
		Bigtop::Backend::Model::GantryCDBI.3 \
		Bigtop::Backend::Model::GantryDBIxClass.3 \
		Bigtop::Backend::SQL.3 \
		Bigtop::Backend::SQL::DB2.3 \
		Bigtop::Backend::SQL::MySQL.3 \
		Bigtop::Backend::SQL::Postgres.3 \
		Bigtop::Backend::SQL::SQLite.3 \
		Bigtop::Backend::SiteLook::GantryDefault.3 \
		Bigtop::Deparser.3 \
		Bigtop::Docs::About.3 \
		Bigtop::Docs::AutoBackends.3 \
		Bigtop::Docs::Cookbook.3 \
		Bigtop::Docs::FullKeywords.3 \
		Bigtop::Docs::Modules.3 \
		Bigtop::Docs::QuickKeywords.3 \
		Bigtop::Docs::QuickStart.3 \
		Bigtop::Docs::Syntax.3 \
		Bigtop::Docs::TOC.3 \
		Bigtop::Docs::TentRef.3 \
		Bigtop::Docs::TentTut.3 \
		Bigtop::Docs::Tutorial.3 \
		Bigtop::Docs::Vim.3 \
		Bigtop::Grammar.3 \
		Bigtop::Keywords.3 \
		Bigtop::Parser.3 \
		Bigtop::ScriptHelp.3 \
		Bigtop::ScriptHelp::Style.3 \
		Bigtop::ScriptHelp::Style::Kickstart.3 \
		Bigtop::ScriptHelp::Style::Pg8Live.3 \
		Bigtop::TentMaker.3 \
		Bigtop::TentMakerPath.3 \
		Bigtop::grammar.3

NO_STAGE=	yes
.include <bsd.port.mk>
