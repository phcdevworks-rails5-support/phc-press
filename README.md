### PHCPress (News/Blog Engine) Documentation
PHCPress rails CMS engine to manage your website's articles, categories and media.

* Website article posts with WYSIWYG editor.
* Upload images locally or use any popular cloud service.
* Customizable article categories module included.

#### Step 1 - Add PHCPress to your gemfile  and run command  

	gem 'phcpress'
	bundle install

#### Step 2 - Copy PHCPress Database Tables  
To copy PHCPress' requried database migrations, copy each command individually to your terminal's command line.  

	rails phcpress:install:migrations
	rails db:migrate

#### Step 3 - Mount PHCPress & Add Routes
Mount PHCPress by adding code below to your routes file.  

	mount Phcpress::Engine, :at => '/'

#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.

	rails assets:clobber
	rails assets:precompile

#### Step 5 - Generate Contact Form View (Customization)  
All PHCPress views and layouts can be overwritten by copying files to your application.

	rails generate phcpress:views