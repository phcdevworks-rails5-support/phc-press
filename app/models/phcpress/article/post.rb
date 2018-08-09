module Phcpress
  class Article::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpresspro::PostVersions'

    # Image Upload
    has_one_attached :pstimage

    # Model Relationships
    has_many :connections, class_name: 'Phcpress::Modules::Connection', dependent: :destroy
    has_many :categories, class_name: 'Phcpress::Modules::Category', :through => :connections

    # Validation for Form Fields
    validates :psttitle,
      presence: true,
      length: { minimum: 3 }

    validates :psttext,
      presence: true,
      length: { minimum: 3 }

    validates :pststatus,
      presence: true

    # Clean URL Define
    friendly_id :phcpress_post_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcpress_post_slug
      [
        [:psttitle]
      ]
    end

  end
end
