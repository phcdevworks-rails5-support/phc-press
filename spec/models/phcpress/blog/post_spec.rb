# Load Rails Helper
require 'rails_helper'

module Phcpress

	describe Blog::Post do
		 it "has a valid factory" do 
		 	expect(FactoryGirl.build(:blog_post)).to be_valid
		 end
	end

end
