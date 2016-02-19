module Phcpress
  class Blog::Post < ActiveRecord::Base
    belongs_to :pststatus
  end
end
