class NewsFeedsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Json
  include PostJson
  include CommentJson
  include UserJson
  def index
    binding.pry
    Rails.logger.info "#{session.inspect}"
    params[:per_page] ||= 50
    params[:page] ||= 1
    @posts = Post.recent_posts(per_page: params[:per_page], page: params[:page])
    Post.preload_associated_post_comments(@posts)
    Post.preload_associated_post_users(@posts)
    render json: @posts.map{|post| post_json(post,post.user,true)}
  end

  def show
    @post = Post.where(id: params[:id])
    Post.preload_associated_post_comments(@post)
    Post.preload_associated_post_users(@post)
    render json: @post.first.post_json(pt,pt.user,true) and return if @post.first
    render json: {errors: {message: "Record Not Found"}},status: 404
  end

  def send_emails
    params[:per_page] ||= 50
    params[:page] ||= 1
    @posts = Post.recent_posts(per_page: params[:per_page], page: params[:page])
    EmailSender.new(@posts).send_emails
    render json: {message: "success",status: 200}
  end
end
