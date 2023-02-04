#!/usr/bin/perl

use utf8;
use strict;
use warnings;


sub install_default{
  print("install\n");
# - .dotfiles
# - .bashrc.d
# - .vim
}

#install demmand
sub install_srut{
  print("srut\n");
# - srut
}

sub install_starship{
  print("starship\n");
# - starship
}

if(defined $ARGV[0] and $ARGV[0] eq 'install'){
  if(defined $ARGV[1] and $ARGV[1] eq "srut"){
    install_srut
  }elsif(defined $ARGV[1] and $ARGV[1] eq "starship"){
    install_starship
  }elsif( !defined $ARGV[1]){
    install_default
  }
}elsif( !defined $ARGV[0]){
  print("Usage:\n");
  print("\tinstall - to install .dofiles, .vim and .bashrc.d\n");
  print("\tinstall srut - to install srut alias\n");
  print("\tinstall starship - to install starship prompt and config\n");
}

