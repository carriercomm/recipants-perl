###########################################################################
# File      : recipants.cfg.pl
# Purpose   : Configuration and global reference variables.
# Program   : ReciPants ( http://recipants.photondetector.com/ )
# Version   : 1.0.1
# Author    : Nick Grossman <nick@photondetector.com>
# Tab stops : 4
#
# Copyright (c) 2002, 2003
#     Nicolai Grossman <nick@photondetector.com>
#     Benjamin Mehlman <ben-recipe@cownow.com>
#     Marc Hartstein   <mahartstein@vassar.edu>
#
# This file is part of ReciPants.
#
# ReciPants is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# ReciPants is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ReciPants; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
###########################################################################


# _____ START CONFIGURATION VARIABLES _______________________________

##### Database config

# DB driver name
# 	For Postgres: "Pg"
# 	For MySQL:    "mysql"
	$db_driver  = "DB_DRIVER";

# Name of database to connect to
	$db_name	= "recipants";

# Database username
	$db_uname	= "DB_USERNAME";

# Database password
	$db_passwd  = "DB_PASSWORD";



##### Host info

# The name of your Web site
	$app_host_title = "My Web Site";

# The main URL of your Web site (not the ReciPants part)
	$app_host_url = "http://mydomain.org/";

# The URL of your ReciPants installation. Must end with a slash ("/")
	$app_installed_url = "http://mydomain.org/ReciPants/";

# Directory where templates live. Can be absolute or relative to the
# directory that ReciPants lives in. Must NOT end with a slash (or
# other path separator)!
	$template_root_directory = "templates";

# Directory where exported RecipeML files go. Can be absolute or
# relative to the directory that ReciPants lives in. Must NOT end
# with a slash (or other path separator)!
	$export_directory_recipeml = "static/exported-recipes/recipeml";

# Directory where exported Meal-Master files go. Can be absolute or
# relative to the directory that ReciPants lives in. Must NOT end
# with a slash (or other path separator)!
	$export_directory_mealmaster = "static/exported-recipes/mealmaster";

# Directory where exported printer-friendly HTML files go. Can be 
# absolute or relative to the directory that ReciPants lives in. 
# Must NOT end with a slash (or other path separator)!
	$export_directory_html_printer = "static/exported-recipes/html-printer";

# Directory where exported plain text (ASCII) files go. Can be 
# absolute or relative to the directory that ReciPants lives in. 
# Must NOT end with a slash (or other path separator)!
	$export_directory_plain_text = "static/exported-recipes/plain-text";
	


##### Cookie config

# The domain that ReciPants cookies should be sent to.
# Starting the cookie domain with a . (period) will send the ReciPants
# cookies to any hostname in your domain.
	$cookie_domain = ".mydomain.org";

# The path on your Web server that ReciPants cookies should be sent to,
# e.g. "/ReciPants". Set to "/" to send it to any directory on your server.
	$cookie_path = "/ReciPants";

# The server's secret host key used for signing cookies. Run the 'keygen.pl'
# script to generate a random key and use the value here.
	$secret_host_key = "SECRET_HOST_KEY";



##### Language configuration

# Default language. Must be one of supported_languages, which can be
# found near the top of the file 'localized_strings.pl'.
	$default_language = "en";



##### Email configuration

# The location of your system's sendmail binary
	$sendmail = "/usr/sbin/sendmail";

# The From: address of automated emails (welcome message, password reminder,
# etc.) The @ symbol must be escaped (e.g. "recipants\@domain.org" rather
# than "recipants@domain.org").
	$system_email_from_address = "recipants\@mydomain.org";

# Site administrator's email address
# The @ symbol must be escaped (e.g. "recipants\@domain.org" rather than 
# "recipants@domain.org")
	$admin_email = "recipants-admin\@mydomain.org";



##### Misc

# Under rare circumstances (the category data in the database gets messed
# up), the category tree function can get stuck in an infinite loop
# and eventually eat up all of your machine's memory, so we stop
# reading from the database when we reach this number of subcategory
# levels. You generally shouldn't need to change this.
	$max_category_depth = 25;


# The character that goes in between directory names.
# The character this is depends on what OS you're running:
#
#     Linux, Unix, MacOS X, OS/2, Windoze = "/"
	$path_separator = "/";


# _____ END CONFIGURATION VARIABLES _________________________________


#  >>>>> You don't need to mess with anything below this line. <<<<<


# _____ DO NOT DISTURB VARIABLES ____________________________________

##### ReciPants application info

$app_name    = "ReciPants";
$app_version = "1.0.1";
$app_url     = "http://recipants.photondetector.com/";


# Return true
1;

# END recipants.cgf.pl