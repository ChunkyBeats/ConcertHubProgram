ConcertHub Program
===============================

Description:
------------
Allows user to build a library of music artists and venues. They can create a list of their favorite artists and venues to see which artists have played at which venues, and vice versa.  Also allows user to update Artist names and where they have performed.  The user is not allowed to create multiple entries for the same artist or venue.  All input is auto-formatted to have every word capitalized.

By:
---
Cory Ribson

Setup:
------
Runs under ruby v2 on OS X, requires the following ruby gems: sinatra, sinatra-contrib, rspec, capybara, pry

These can be installed as follows:

$ gem install sinatra sinatra-contrib rspec capybara rake pg sinatra-activerecord
$ bundle

Then run app as follows:

$ ruby app.rb

License:
--------
MIT License. Copyright 2015 by authors.

Bugs:
-----
Might have forgotten a few gems in the Setup.. There's kind of a lot going on now.

Future Updates:
---------------
Create dates for concerts so user can see when one of their artists played at a venue.
Doing this should also allow for one artist to play at the venue multiple times for different dates.  Actually really interested in attempting to add this later.
