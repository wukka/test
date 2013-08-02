#!/usr/bin/env php
<?php
include __DIR__ . '/../autoload.php';
use Wukka\Test as T;

T::plan(13);

T::ok( TRUE, 'testing ok method');
T::is( 1, 1, 'testing is method');
T::isnt( 1, 2, 'testing isnt method');
T::isa( new stdclass, 'stdclass', 'testing isa method');
T::like( 'this is a test', '#test#',  'testing like method');
T::unlike( 'this is a test', '#isa#',  'testing unlike method');
T::cmp_ok( 2, '>', 1, 'testing cmp_ok > method');
T::cmp_ok( 1, '>=', 1, 'testing cmp_ok >= method');
T::cmp_ok( 1, '<=', 1, 'testing cmp_ok <= method');
T::cmp_ok( 1, '<', 2, 'testing cmp_ok < method');
T::cmp_ok( 3, '==', 3, 'testing cmp_ok == method');
T::cmp_ok( 3, '===', 3, 'testing cmp_ok === method');
T::cmp_ok( 3, '!==', '3', 'testing cmp_ok !== method');
