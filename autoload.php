<?php
@include __DIR__ . '/vendor/autoload.php';

spl_autoload_register(function( $class ){
  if( $class == 'Wukka\Test' || strpos( $class, 'Wukka\Test\\') === 0 ){
     require __DIR__ . '/lib/' . str_replace('\\', '/', $class) . '.php';
  }
});