module Phcpress
  class Modules::Connection < ApplicationRecord
    belongs_to :post, class_name: 'Articles::Post'
    belongs_to :category, class_name: 'Modules::Category'
  end
end
