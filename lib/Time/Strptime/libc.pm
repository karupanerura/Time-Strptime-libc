package Time::Strptime::libc;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

use parent qw/Exporter/;
our @EXPORT_OK = qw/strptime/;

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;
__END__

=encoding utf-8

=head1 NAME

Time::Strptime::libc - It's new $module

=head1 SYNOPSIS

    use Time::Strptime::libc;

=head1 DESCRIPTION

Time::Strptime::libc is ...

=head1 LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

karupanerura E<lt>karupa@cpan.orgE<gt>

=cut

