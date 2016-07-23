[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/phc-press/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
  
### PHCPress(5) (Blog & News Post Engine) Documentation
PHCPress is a basic open source news & blog engine.
  
#### Step 1 - Add PHCPress Engine to your gemfile  

	gem 'phcpress', '~> 5.1'
	bundle exec install
  
#### Step 2 - Copy over database migration files  

	rake phcpress:install:migrations
	rake db:migrate
  
#### Step 3 - Recompile Assets  
PHCPress included Views & UI requires bootstrap and FontAwesome.  
  
	rake assets:clobber
	rake assets:precompile

#### Step 4 - Setup Carrierwave (Image Uploads)  
PHCPress default Carrierwave settings can be overwritten (suggested).  
  
- [How to Override PHCPress Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader---Override)
- [How to Override - Cloudinary Example](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader-(Cloudinary))
