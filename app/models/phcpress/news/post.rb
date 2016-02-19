module Phcpress
  class News::Post < ActiveRecord::Base
    belongs_to :pststatus
  end
end
