
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.009.
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
  "dist_version" => "0.0203",
  "license" => "mit",
  "module_name" => "App::Notifier::Client",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Getopt::Long" => "2.36",
    "JSON::MaybeXS" => 0,
    "LWP::UserAgent" => 0,
    "Pod::Usage" => 0,
    "URI" => 0,
    "YAML::XS" => 0,
    "perl" => "5.012",
    "strict" => 0,
    "vars" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/notifier",
    "bin/notifier"
  ],
  "test_requires" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.3601",
  "Test::More" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
