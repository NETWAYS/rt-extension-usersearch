# RT-Extension-UserSearch

#### Table of Contents

1. [About](#about)
2. [License](#license)
3. [Support](#support)
4. [Requirements](#requirements)
5. [Installation](#installation)
6. [Configuration](#configuration)

## About

This portlet lists privileged users and their ticket count grouped by state.
Only users with the permission `ShowUserSearch` can add this portlet
to their homepage dashboard.

![Screenshot](doc/screenshot/overview.png)

## License

This project is licensed under the terms of the GNU General Public License Version 2.

This software is Copyright (c) 2018 by NETWAYS GmbH [support@netways.de](mailto:support@netways.de).

## Support

For bugs and feature requests please head over to our [issue tracker](https://github.com/NETWAYS/rt-extension-usersearch/issues).
You may also send us an email to [support@netways.de](mailto:support@netways.de) for general questions or to get technical support.

## Requirements

- RT 4.4.2

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

By default, all privilegued users are shown. There is a known problem
with users which don't own any tickets being hidden.

If you want to show specific groups, you can configure an array of group names:

```
Set($UserSearch_Groups,
[ "development" ]
);
```

### Permissions

Navigate into `Admin` - `Global` - `Group Rights` and select the group to modify.
Select the `Rights for staff` tab and tick `Show the usersearch box`.

### Dashboard

Users need to edit their dashboard and add the `RT-Extension-UserSearch` droplet.

![Screenshot](doc/screenshot/add-portlet.png)
