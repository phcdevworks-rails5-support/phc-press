[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
  
### PHC-Press (Blog & News Post Engine) Documentation
PHC-Press add blog and news posting abilities to your ruby on rails powered website or application.

* Seperate News & Blog Sections
* Highly Customizable
* Easy Integration into Projects  


#### Step 1 - Add PHCPress to your gemfile  

	gem 'phcpress', '~> 0.9.6'
	bundle exec install  
  
#### Step 2 - Add PHCPress database migration files  

	rake railties:install:migrations  
	rake db:migrate  
  
#### Step 3 - Mount the Engine in your Routes File  
Mount the Engine in your Routes File (App must have Root route)  
  
	mount Phcpress::Engine, :at => '/'  
  
#### Step 4 - Generate Views  
Generate views for customization and app integration.  
  
	rails generate phcpress:views

#### Step 5 - Recompile Assets  
PHCPress UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile  

#### Step 5 - Setup Carrierwave (Image Uploads)  
On read only file systems carrierwave may need additional setup.  
