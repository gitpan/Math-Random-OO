#!/usr/bin/perl
use strict;
use warnings;
use blib;  

use Test::More;

BEGIN {
    eval {
        require Test::Distribution;
    };
    if($@) {
        plan skip_all => 'Test::Distribution not installed';
    }
    else {
        import Test::Distribution;
    }
}
