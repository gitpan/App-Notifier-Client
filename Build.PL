
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "a client library for App::Notifier::Service",
  "dist_author" => [
    "Shlomi Fish <shlomif\@cpan.org>"
  ],
  "dist_name" => "App-Notifier-Client",
  "dist_version" => "0.0102",
  "license" => "mit",
  "module_name" => "App::Notifier::Client",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Getopt::Long" => 0,
    "LWP::UserAgent" => 0,
    "Pod::Usage" => 0,
    "URI" => 0,
    "YAML::XS" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/notifier",
    "bin/notifier"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
