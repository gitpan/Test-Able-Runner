package Test::Test::Able::Runner::Role;
our $VERSION = '1.001';
use Test::Able::Role;
use Test::More;

test plan => 1, not_ok => sub {
    fail('this test should not run');
};

1;
