module Phcpress
  class Article::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpress::CategoryVersions'

    # Relationships
    has_and_belongs_to_many :posts, class_name: 'Phcpress::Article::Post', :join_table => 'categories_posts'
    belongs_to :user, class_name: 'Phcaccounts::User'

    # Validation for Form Fields
    validates :catname,
      presence: true,
      uniqueness: true,
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
