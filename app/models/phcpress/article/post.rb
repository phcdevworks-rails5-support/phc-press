module Phcpress
  class Article::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'Phcpress::PostVersions'

    # Image Upload
    has_one_attached :post_image

    # Relationships
    has_and_belongs_to_many :categories, class_name: 'Phcpress::Article::Category', :join_table => 'categories_posts'
    belongs_to :user, class_name: 'Phcaccounts::User'

    # Form Fields Validation
    validates :post_title,
      presence: true

    validates :post_text,
      presence: true

    # Clean URL Define
    friendly_id :phcpress_post_slug, use: [:slugged, :finders]

    def phcpress_post_slug
      [:post_title]
    end

  end
end
