# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD$

PORTNAME=	WebService-MusicBrainz
PORTVERSION=	0.93
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl interface to MusicBrainz

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		WebService::MusicBrainz.3 \
		WebService::MusicBrainz::Artist.3 \
		WebService::MusicBrainz::Label.3 \
		WebService::MusicBrainz::Query.3 \
		WebService::MusicBrainz::Release.3 \
		WebService::MusicBrainz::ReleaseGroup.3 \
		WebService::MusicBrainz::Response.3 \
		WebService::MusicBrainz::Track.3 \
		WebService::MusicBrainz::Response::Alias.3 \
		WebService::MusicBrainz::Response::AliasList.3 \
		WebService::MusicBrainz::Response::Artist.3 \
		WebService::MusicBrainz::Response::ArtistList.3 \
		WebService::MusicBrainz::Response::Disc.3 \
		WebService::MusicBrainz::Response::DiscList.3 \
		WebService::MusicBrainz::Response::ISRC.3 \
		WebService::MusicBrainz::Response::ISRCList.3 \
		WebService::MusicBrainz::Response::Label.3 \
		WebService::MusicBrainz::Response::LabelList.3 \
		WebService::MusicBrainz::Response::Metadata.3 \
		WebService::MusicBrainz::Response::Puid.3 \
		WebService::MusicBrainz::Response::PuidList.3 \
		WebService::MusicBrainz::Response::Rating.3 \
		WebService::MusicBrainz::Response::Relation.3 \
		WebService::MusicBrainz::Response::RelationList.3 \
		WebService::MusicBrainz::Response::Release.3 \
		WebService::MusicBrainz::Response::ReleaseList.3 \
		WebService::MusicBrainz::Response::ReleaseEvent.3 \
		WebService::MusicBrainz::Response::ReleaseEventList.3 \
		WebService::MusicBrainz::Response::ReleaseGroup.3 \
		WebService::MusicBrainz::Response::ReleaseGroupList.3 \
		WebService::MusicBrainz::Response::Tag.3 \
		WebService::MusicBrainz::Response::TagList.3 \
		WebService::MusicBrainz::Response::Track.3 \
		WebService::MusicBrainz::Response::TrackList.3 \
		WebService::MusicBrainz::Response::UserRating.3 \
		WebService::MusicBrainz::Response::UserTag.3 \
		WebService::MusicBrainz::Response::UserTagList.3

NO_STAGE=	yes
.include <bsd.port.mk>
