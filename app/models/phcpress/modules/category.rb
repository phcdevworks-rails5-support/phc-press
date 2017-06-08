module Phcpress
  class Modules::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpress::CategoryVersions'

    # Relationships
    has_many :connections, class_name: 'Phcpress::Modules::Connection', dependent: :destroy
    has_many :posts, class_name: 'Phcpress::Modules::Category', :through => :connections

    # Validation for Form Fields
    validates :catname,
      presence: true,
      length: { minimum: 3 }

    # Clean URL Define
    friendly_id :phcpress_category_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcpress_category_slug
      [
        [:catname]
      ]
    end

  end
end
