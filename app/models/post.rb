class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  paginates_per 50
  def self.preload_associated_post_comments(posts)
    ActiveRecord::Associations::Preloader.new.preload(posts, comments: :user)
  end
  #
  def self.preload_associated_post_users(posts)
    ActiveRecord::Associations::Preloader.new.preload(posts, :user)
  end

  def self.recent_posts(opts={})
    self.order("created_at DESC").page(opts[:page]).per(opts[:per_page])
  end
end
