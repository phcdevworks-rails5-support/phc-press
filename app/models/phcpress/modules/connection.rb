module Phcpress
  class Modules::Connection < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper_tail Initialize
    has_paper_trail

    # Relationships
    belongs_to :post, class_name: 'Phcpress::Articles::Post'
    belongs_to :category, class_name: 'Phcpress::Modules::Category'

  end
end
