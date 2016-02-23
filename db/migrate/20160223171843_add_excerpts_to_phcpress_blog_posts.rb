class AddExcerptsToPhcpressBlogPosts < ActiveRecord::Migration
  def change
    add_column :phcpress_blog_posts, :blogpstexcerpts, :text
  end
end
