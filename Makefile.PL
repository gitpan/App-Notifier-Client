
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a client library for App::Notifier::Service",
  "AUTHOR" => "Shlomi Fish <shlomif\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.3601"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "App-Notifier-Client",
  "EXE_FILES" => [
    "bin/notifier",
    "bin/notifier"
  ],
  "LICENSE" => "mit",
  "NAME" => "App::Notifier::Client",
  "PREREQ_PM" => {
    "Getopt::Long" => 0,
    "LWP::UserAgent" => 0,
    "Pod::Usage" => 0,
    "URI" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.0101",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



