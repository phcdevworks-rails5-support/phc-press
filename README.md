[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/phc-press/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
  
### PHCPress(5) (Blog & News Post Engine) Documentation
PHCPress is a basic open source news & blog engine.
  
- Website article posts with WYSIWYG editor.
- Upload images locally or use cloud services.
- Customizable Article Categories module included.
  
#### Step 1 - Add PHCPress Engine to your gemfile  

	gem 'phcpress', '~> 5.3'
	bundle exec install
  
#### Step 2 - Copy over database migration files  

	rails phcpress:install:migrations
	rails db:migrate
  
#### Step 3 - Recompile Assets  
PHCPress included Views & UI requires bootstrap and FontAwesome.  
  
	rails assets:clobber
	rails assets:precompile
  
#### Step 4 - Setup Carrierwave (Image Uploads)  
PHCPress default Carrierwave settings can be overwritten (suggested).  
  
- [How to Override PHCPress Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader---Override)
- [How to Override Cloudinary Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader-(Cloudinary))
- [Critical Security Updates](https://github.com/PHCNetworks/phc-scriptcdn/wiki/Critical-Security-Updates))
