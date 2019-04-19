FROM perl:5.20
COPY . /data/pipsqueek/
WORKDIR /data/pipsqueek
RUN cpanm Carp \
   Class::Accessor::Fast \
   XML::LibXML::Element \
   DateTime::Format::Mail  \
   DateTime::Format::W3CDTF \
   DBD::SQLite \
   Data::Dumper \
   Date::Format \
   Date::Language \
   Date::Parse \
   DBI \
   Exporter \
   File::Find \
   File::Path \
   File::Spec::Functions \
   Filter::Template \
   FindBin \
   integer \
   IP::Country::MaxMind \
   JSON \
   Lingua::Ispell \
   LWP::UserAgent \
   overload \
   Parse::RecDescent \
   Physics::Unit \
   XML::LibXML::Element \
   POE \
   POE::Component::IRC \
   POSIX \
   Time::Local \
   Time::Zone \
   URI::Escape \
   URI::Find::Schemeless \
   URI::URL \
   utf8 \
   Geo::IP::PurePerl \
   Schedule::Cron::Events \
   WWW::WolframAlpha \
   XML::RSS 
CMD [ "perl", "./bin/pipsqueek.pl", "--clientdir /data/pipsqueek/client"]

