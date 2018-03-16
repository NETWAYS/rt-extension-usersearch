# RT-Extension-UserSearch

#### Table of Contents

1. [About](#about)
2. [License](#license)
3. [Support](#support)
4. [Requirements](#requirements)
5. [Installation](#installation)
6. [Configuration](#configuration)

## About

Like QueueSearch this portlet lets you show - guess what - a UserSearch.
Only users with the permission `ShowUserSearch` are able to add this
portlet to their homepage.

It lists all members of a configurable group.

## License

This project is licensed under the terms of the GNU General Public License Version 2.

This software is Copyright (c) 2018 by NETWAYS GmbH [support@netways.de](mailto:support@netways.de).

## Support

For bugs and feature requests please head over to our [issue tracker](https://github.com/NETWAYS/rt-extension-usersearch/issues).
You may also send us an email to [support@netways.de](mailto:support@netways.de) for general questions or to get technical support.

## Requirements

- RT 4.2

## Installation

Extract this extension to a temporary location.

Git clone:

    cd /usr/local/src
    git clone https://github.com/NETWAYS/rt-extension-usersearch

Tarball download:

    cd /usr/local/src
    wget https://github.com/NETWAYS/rt-extension-usersearch/archive/master.zip
    unzip master.zip

Navigate into the source directory and install the extension. (May need root permissions.)

    perl Makefile.PL
    make
    make install

Edit your `/opt/rt4/etc/RT_SiteConfig.pm`

Add this line:

    Plugin('RT::Extension::UserSearch');

Clear your mason cache:

    rm -rf /opt/rt4/var/mason_data/obj

Restart your webserver.

## Configuration

Add the extension to homepage components:

    Set($HomepageComponents, [qw(
    	QuickCreate
    	Quicksearch
    	MyAdminQueues
    	MySupportQueues
    	MyReminders
    	RefreshHomepage
    	Dashboards
    	SavedSearches
    	RT-Extension-UserSearch
    )]);
