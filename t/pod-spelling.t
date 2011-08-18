#!/usr/bin/perl
use Test::More;
use strict;
use warnings;

eval 'use Test::Spelling';

if ( $@ ) {
    plan skip_all => 'Can\'t run spelling tests without Test::Spelling';
} else {
    add_stopwords(<DATA>);
    all_pod_files_spelling_ok();
}
__DATA__
Volity
friv
