module Phcpress
  class Article::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpress::PostVersions'

    # Image Upload
    has_one_attached :pstimage

    # Model Relationships
    has_and_belongs_to_many :categories, class_name: 'Phcpress::Article::Category', :join_table => 'categories_posts'
    belongs_to :user, class_name: 'Phcaccounts::User'

    # Validation for Form Fields
    validates :psttittle,
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
        [:psttittle]
      ]
    end

  end
end
