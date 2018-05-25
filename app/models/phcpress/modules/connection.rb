module Phcpress
  class Modules::Connection < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcpress::ConnectionVersions'

    # Relationships
    belongs_to :post, class_name: 'Phcpress::Article::Post'
    belongs_to :category, class_name: 'Phcpress::Modules::Category'

    # Clean URL Define
    friendly_id :phcpress_connections_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcpress_connections_slug
      [
        [:post_id, :category_id]
      ]
    end

  end
end
