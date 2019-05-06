module Phcpress
  class Article::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpress::PostVersions'

    # Image Upload
    has_one_attached :post_image

    # Model Relationships
    has_and_belongs_to_many :categories, class_name: 'Phcpress::Article::Category', :join_table => 'categories_posts'
    belongs_to :user, class_name: 'Phcaccounts::User'

    # Validation for Form Fields
    validates :post_tittle,
      presence: true,
      length: { minimum: 3 }

    validates :post_text,
      presence: true,
      length: { minimum: 3 }

    validates :post_status,
      presence: true

    # Clean URL Define
    friendly_id :phcpress_post_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcpress_post_slug
      [
        [:post_tittle]
      ]
    end

  end
end
