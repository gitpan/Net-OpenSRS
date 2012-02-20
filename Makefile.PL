use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Net::OpenSRS',
    AUTHOR        => 'Ivan Kohler <ivan-opensrs@freeside.biz>', # Really just the current maintainer
    VERSION_FROM  => 'lib/Net/OpenSRS.pm',
    ABSTRACT_FROM => 'lib/Net/OpenSRS.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'LWP::UserAgent' => 0,
        'XML::Simple'    => 0,
        'Digest::MD5'    => 0,
        'Date::Calc'     => 0,
        'Locales'        => 0,
        'Number::Phone'  => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'     => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Net-OpenSRS-*' },
);
