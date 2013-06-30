MindTouch Core - Enterprise Wiki
================================

`MindTouch Core`_ is a collaboration, wiki and mashup platform used by
millions. It provides wiki-like ease of use with a sophisticated web
services framework for rapid application development, creating flexible
workflows and rapid integration. Features include WYSIWYG content
authoring, a scripting language, web 2.0 mashups and multi-language
support.

This appliance includes all the standard features in `TurnKey Core`_,
and on top of that:

- MindTouch Core (Deki) configurations:

   - Installed from upstream Debian package to /var/www/dekiwiki
   - Includes imported trusted root certificates from Mozilla's LXR.
   - Includes msttcorefonts (recommended fonts for Deki).
   - Set default template to deucebeta lighty-blue (more attractive).

- SSL support out of the box.
- `PHPMyAdmin`_ administration frontend for MySQL (listening on port
  12322 - uses SSL).
- Postfix MTA (bound to localhost) to allow sending of email (e.g.,
  password recovery).
- Webmin modules for configuring Apache2, PHP, MySQL and Postfix.

Credentials *(passwords set at first boot)*
-------------------------------------------

-  Webmin, Webshell, SSH, MySQL: username **root**
-  MindTouch Core (Deki): username **admin**


.. _MindTouch Core: http://www.mindtouch.com
.. _TurnKey Core: http://www.turnkeylinux.org/core
.. _PHPMyAdmin: http://www.phpmyadmin.net
