module Phcpress
  class Modules::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper_tail Initialize
    has_paper_trail

    # Relationships
    has_many :connections, class_name: 'Phcpress::Modules::Connection', dependent: :destroy
    has_many :posts, class_name: 'Phcpress::Modules::Category', :through => :connections

    # Validation for Form Fields
    validates :catname,
      presence: true,
      length: { minimum: 3 }

  end
end
