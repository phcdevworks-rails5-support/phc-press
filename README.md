[![security](https://hakiri.io/github/PHCNetworks/phc-press/master.svg)](https://hakiri.io/github/PHCNetworks/phc-press/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/phc-press/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/phc-press)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/phc-press.svg)](https://gemnasium.com/github.com/PHCNetworks/phc-press)
[![Gem Version](https://badge.fury.io/rb/phcpress.svg)](https://badge.fury.io/rb/phcpress)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/PHCNetworks/phc-press/blob/master/MIT-LICENSE)  

### PHCPress (News/Blog Engine) Documentation
PHCPress rails CMS engine to manage your website's articles, categories and media.

* Website article posts with WYSIWYG editor.
* Upload images locally or use any popular cloud service.
* Customizable article categories module included.

#### Step 1 - Add PHCPress to your gemfile  and run command  

	gem 'phcpress', '~> 9.1', '>= 9.1.1'
	bundle install

#### Step 2 - Copy PHCPress Database Tables  
To copy PHCPress' requried database migrations, copy each command individually to your terminal's command line.  

	rails phcpress:install:migrations
	rails db:migrate

#### Step 3 - Mount PHCPress & Add Routes
Mount PHCPress by adding code below to your routes file.  

	mount Phcpress::Engine, :at => '/'

#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over requried files.

	rails assets:clobber
	rails assets:precompile

#### Step 5 - Generate Contact Form View (Customization)  
All PHCPress views and layouts can be overwritten by copying files to your application.

	rails generate phcpress:views

#### How to Setup Image Uploads
PHCPress default Carrierwave settings can be overwritten.  

- [How to Override PHCPress Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader---Override)
- [How to Override Cloudinary Uploader](https://github.com/PHCNetworks/phc-press/wiki/Image-Uploader-(Cloudinary))
- [Critical Security Updates](https://github.com/PHCNetworks/phc-press/wiki/Critical-Security-Updates)
