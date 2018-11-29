class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  def self.preload_associated_user(comments)
    ActiveRecord::Associations::Preloader.new.preload(comments, :user)
  end

end
