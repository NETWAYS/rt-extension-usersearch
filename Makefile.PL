use inc::Module::Install;

RTx     'RT-Extension-UserSearch';
license 'gpl_2';
repository 'https://github.com/NETWAYS/rt-extension-usersearch';
readme_from 'lib/RT/Extension/UserSearch.pm';

requires_rt '4.2';

sign;
WriteAll;
