package RTx::UserSearch;

use strict;
use version;

our $VERSION="1.0.0";

use RT::System;

RT::System->AddRight('Staff' => 'ShowUserSearch' => 'Show the usersearch box');

1;
=pod

=head1 NAME

RTx::UserSearch

=head1 VERSION

version 1.0.0

=head1 AUTHOR

Marius Hein <marius.hein@netways.de>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by NETWAYS GmbH <info@netways.de>

This is free software, licensed under:
    GPL Version 2, June 1991

=cut

__END__
