#!/usr/bin/perl

use utf8;
use strict;
use Env;
use Cwd qw(getcwd);
use warnings;

use File::Fetch;

sub install_default{
  print("install\n");
  print($ENV{HOME}."\n");
  print($ENV{PWD}."\n");
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
  my $url = 'https://starship.rs/install.sh';
  my $ff = File::Fetch->new(uri => $url);
  my $file = $ff->fetch() or die $ff->error;
  system("sh", "install.sh", "-b", "$ENV{HOME}/.local/bin");
  system("ln", "-s", "$ENV{PWD}/starship.toml", "$ENV{HOME}/.config");
  system("rm", "install.sh");
# - starship
Bartosz Tomasz Bogdan NOT Root CA}

if(defined $ARGV[0] and $ARGV[0] eq 'install'){
  if(defined $ARGV[1] and $ARGV[1] eq "srut"){
    install_srut
  }elsif(defined $ARGV[1] and $ARGV[1] eq "starship"){
    install_starship
  }elsif(defined $ARGV[1] and $ARGV[1] eq "all"){
    install_default
    install_srut
    install_starship
  }elsif( !defined $ARGV[1]){
    install_default
  }
}elsif( !defined $ARGV[0]){
  print("Usage:\n");
  print("\tinstall - to install .dofiles, .vim and .bashrc.d\n");
  print("\tinstall srut - to install srut alias\n");
  print("\tinstall starship - to install starship prompt and config\n");
  print("\tinstall all - installs all above\n");
}

