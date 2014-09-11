package Alien::Editline;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Build and make available Editline (libedit)
our $VERSION = '0.02'; # VERSION


1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Alien::Editline - Build and make available Editline (libedit)

=head1 VERSION

version 0.02

=head1 SYNOPSIS

In your C<Build.PL>:

 use Alien::Editline;
 use Module::Build;
 
 my $build = Module::Build->new(
   ...
   extra_compiler_flags => Alien::Editline->cflags,
   extra_linker_flags   => Alien::Editline->libs,
   ...
 );
 
 $build->create_build_script;

In your L<FFI::Raw> script:

 use Alien::Editline;
 use FFI::Raw;
 
 my($dll) = Alien::Editline->dynamic_libs;
 FFI::Raw->new($dll, '...', ...);

=head1 DESCRIPTION

This distribution installs Editline so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the Editline
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

=head1 AUTHOR

Graham Ollis <plicease@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
