package RTx::UserSearch;

use strict;
use version '1.0';
use RT::System;
use vars qw(
	$RIGHTS
	$RIGHTS_CATEGORIES
	
);

# Secure our box for special users only
$RIGHTS = {
	'ShowUserSearch' => 'Show the usersearch box'
};

$RIGHTS_CATEGORIES = {
	'ShowUserSearch' => 'Staff'
};

RT::System->AddRights(%{ $RIGHTS });
RT::System->AddRightCategories(%{ $RIGHTS_CATEGORIES });


1;