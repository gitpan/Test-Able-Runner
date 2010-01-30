
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Test::Able::Runner',
                       'DISTNAME' => 'Test-Able-Runner',
                       'AUTHOR' => 'Andrew Sterling Hanenkamp',
                       'ABSTRACT' => 'use Test::Able without a bunch of boilerplate',
                       'EXE_FILES' => [],
                       'VERSION' => '1.001',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Module::Pluggable' => '3.6',
                                        'Test::Able' => '0.09',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Moose' => '0.94'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



