[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/phc-press.svg)](https://gemnasium.com/github.com/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)  
    
### PHCPress(6) (News/Blog Engine) Documentation
PHCPress(6) rails CMS engine to manage articles, categories and media.
  
- Website article posts with WYSIWYG editor.
- Upload images locally or use any popular cloud service.
- Customizable article categories module included.
  
#### Step 1 - Add PHCPress Engine to your gemfile  

	gem 'phcpress', '~> 6.1', '>= 6.1.4'
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
