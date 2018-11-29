class User < ApplicationRecord
  has_many :posts
  has_many :comments
  def self.preload_associated_comments(users)
      ActiveRecord::Associations::Preloader.new.preload(users, :comments)
  end

  def self.preload_associated_post(users)
    ActiveRecord::Associations::Preloader.new.preload(users, :posts)
  end
end
