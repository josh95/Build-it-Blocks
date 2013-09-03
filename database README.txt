Builditblocks Database
=====================================================



Intro
=====================================================

The database is refered to as "builditblocks" written like that.
No dashes or spaces. 

The .sql containing the database exports all of the tables to a
database on your local machine. Please name this database
"builditblocks". That is how the code references it so that is how
the database must be named to avoid errors.


Tables
=====================================================

~~~~~~~~~~module_index~~~~~~~~~~

This contains all of the basic information of a module that does
not involve steps or applications.

ID- primary key. Used to identify each module. It is used to link
the module's steps and applications back to the module. As modules
get deleted/added, the ID may not be in counting order. This is 
fine. 

partnerID- Used to tie particular modules to a sponsor/business
partner. Not currently implemented

name- name of the module

difficulty- how hard the module is to build on a scale of 1 to 3
Not currently implemented.

description- some text used as the title text of the icons.
displays when hovering over the module icon.

date-posted- Currently used to display the most recently uploaded
module

type- the large category the module falls under. either:
junk=1,lego=2, art=3, code=4, or minecraft=5

subcategoryID- the specific category the module belongs to.
Unique to each type. Used to link to the category_table

authorID- the id assigned to the person who wrote this module

popularity- how many pageviews this module has. Not currently 
implemented.

icon- the 150 x 150 img that identifies this module

icon-tooltip- a larger image of the module. Used on the frontpage
for the most recent module. Not used otherwise.

icon-alt-text- when the image doesn't load. Not really used.

download-link- a downloadable file that accompanies the modules.
some modules have one, others don't

download-type-specifies what the download is.

~~~~~~~~~~applications~~~~~~~~~~

contains the applications and an overview of the module. The first
posted "application" of a given module is actually the overview.
In example: There are 3 rows in this table belonging to module 4.
The information in the first row is actually describing the
overview of the module. The subsequent rows are actual 
applications.

ID- primary key used to order the applications. Not actually used
in the code. Its just good to have a primary key.

moduleID- The id of the module that the row is tied to.

picture- the image path of the image related to this application

description- the text that displays when viewing this application
or overview.

link- a link to somewhere related to this application. not
currently used, but it would be a good feature to have in the
future.

youtube-embedID- a link to youtube showng the module in action.
not currently implemented.

~~~~~~~~~~steps~~~~~~~~~~

The step by step instructions of the module. There is an image and
text description for each step.
NOTE: make sure the steps are in order in the database. The code
does not currently 

ID- primary key used to order the steps. Not actually used
in the code. Its just good to have a primary key.

moduleID- The id of the module that the row is tied to.

step-number- used to order the steps

image-path- path of the image of the step

step-description- the text of the step

related-links- some link to useful places. Not currently 
implemented.

rcxcode-robolab- a file to download robot code for lego
modules. Not currently implemented

rcxcode-mindstorms- a file to download robot code for lego
modules. Not currently implemented

~~~~~~~~~~category_table~~~~~~~~~~

Contains all of the subcategories and lists their types and 
subcategoryIDs.

ID- primary key. you get it by now.

subcategoryID-used to identify each subcategory by number.

typeID- the module's type, lego, art, minecraft ...
NOTE: although neither subcategoryID or typeID are not 
individually unique, there are no 2 categories with the same typeID
and subcategoryID. They are unique in this way.

name- name of the category

subcategory-description- not currently implemented.

~~~~~~~~~~keywords~~~~~~~~~~

not currently implemented table. would have been used to search
for modules.

~~~~~~~~~~partner_info~~~~~~~~~~

Used to store informantion and custom headers for business 
partners. Not currently implemented.

~~~~~~~~~~projects~~~~~~~~~~

Used to list the projects that a module is used in. Not currently
implemented.