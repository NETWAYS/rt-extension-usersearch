package RT::Extension::UserSearch;

use strict;
use version;

our $VERSION='2.0.0';

use RT::System;

RT::System->AddRight('Staff' => 'ShowUserSearch' => 'Show the usersearch box');

# Automatically extend $HomepageComponents. Avoids the need to
# maintain the component list when installing this extension.
my @components = @{$RT::Config->Get('HomepageComponents')};
push(@components, 'RT-Extension-UserSearch');
$RT::Config->Set('HomepageComponents', \@components);

1;
=pod

=head1 NAME

RT-Extension-UserSearch - Provides a portlet to list members of a configurable group

=head1 DESCRIPTION

This portlet lists privileged users and their ticket count grouped by state.
Only users with the permission `ShowUserSearch` can add this portlet
to their homepage dashboard.

It lists all members of a configurable group.

=head1 RT VERSION

Works with RT 4.4.2

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::UserSearch');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 CONFIGURATION

Navigate into Admin - Global - Group Rights and select the group to modify.
Select the Rights for staff tab and tick Show the usersearch box.

Users need to edit their dashboard and add the RT-Extension-UserSearch droplet.

=head1 AUTHOR

NETWAYS GmbH <lt>support@netways.de<gt>

=head1 BUGS

All bugs should be reported on L<GitHub|https://github.com/NETWAYS/rt-extension-usersearch>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018 by NETWAYS GmbH

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

__END__
