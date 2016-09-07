[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/phc-press.svg)](https://gemnasium.com/github.com/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
    
### PHCPress(5) (Blog & News Post Engine) Documentation
PHCPress is a basic open source news & blog engine.
  
- Website article posts with WYSIWYG editor.
- Upload images locally or use cloud services.
- Customizable article categories module included.
  
#### Step 1 - Add PHCPress Engine to your gemfile  

	gem 'phcpress', '~> 5.3', '>= 5.3.4'
	bundle install
  
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
- [Critical Security Updates](https://github.com/PHCNetworks/phc-press/wiki/Critical-Security-Updates)
