module Phcpress
  class Modules::Connection < ApplicationRecord
  
    # Relationships
    belongs_to :post, class_name: 'Phcpress::Articles::Post'
    belongs_to :category, class_name: 'Phcpress::Modules::Category'
  
  end
end