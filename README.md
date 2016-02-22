[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Build Status](https://travis-ci.org/PHCNetworks/phc-press.svg?branch=master)](https://travis-ci.org/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
  
### PHC-Press (Blog & News Post Engine) Documentation
PHC-Press add blog and news posting abilities to your ruby on rails powered website or application.

* Seperate News & Blog Sections
* Highly Customizable
* Easy Integration into Projects  


#### Step 1 - Add PHCPress to your gemfile  

	gem 'phcpress', '~> 0.4.1b'
	bundle exec install  
  
#### Step 2 - Add and migrate phcpress database tables  

	rake railties:install:migrations  
	rake db:migrate  
  
#### Step 3 - Mount the Engine in your Routes File  
Mount the Engine in your Routes File (App must have Root route)  
  
	mount Phcpress::Engine, :at => '/'  
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcpress:views
