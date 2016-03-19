[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/phc-press/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
  
### PHCPress(2) (Blog & News Post Engine) Documentation
PHCPress is an open source news & blog engine built for PHCPress application
  
#### Step 1 - Add PHCPress to your gemfile  

	gem 'phcpress', '~> 2.7', '>= 2.7.5'  
	bundle exec install  
  
#### Step 2 - Add PHCPress database migration files  

	rake phcpress:install:migrations 
	rake db:migrate  
  
#### Step 3 - Recompile Assets  
PHCPress UI requires bootstrap and fontawesome to operate.  
  
	rake assets:clobber
	rake assets:precompile  

#### Step 4 - Setup Carrierwave (Image Uploads)  
PHCPress default Carrierwave settings can be overwritten (suggested).  
  
- [How to Override PHCPress Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader---Override)
- [How to Override - Cloudinary Example](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader-(Cloudinary))
