Developer's Page

=====================================================

The first page the user should get to is the login page.
This page recieves user input for the username and password. This
is the username and password for the MySQL database. The password
gets posted to each subsequent page that the user navigates to.
THis makes the login not a "real" login page. ie: Logging out
doesn't really work. As long as the page is cached, someone can
press back until they get to a page that "requires" a login.

THis also means that to add a new user, the user has to be added
as a user of the MySQL database.

