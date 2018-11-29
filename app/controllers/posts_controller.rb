class PostsController < ApplicationController
  before_action :require_user, only: [:create, :update]
  skip_before_action :verify_authenticity_token

  def index
    params[:page] ||= 1
    params[:per_page] ||= 50
    @posts = Post.recent_posts(page: params[:page], per_page: params[:per_page])
    render json: @posts, status: 200
  end

  def show
    @post = Post.find_by_id(params[:id])
    render json: {errors: {message: "Record Not Found"}, status: 404} and return unless @post
    render json: @post
  end

  def create
    render json: {errors: {message: "Bad Request"}, status: 400} unless params[:user_id] || @current_user
    Post.create!(user_id: params[:user_id], content: params[:content])
    render json: {message: "suceess",status: :created}
  end

  def update
    render json: {errors: {message: "Bad Request"}, status: 400} and return unless params[:user_id] || @current_user
    @post ||= Post.find_by(id: params[:id])
    render json: {errors: {message: "Record Not Found"}, status: 404} and return unless @post
    @post.content = params[:content]
    if @post.save
      render json: {message: "suceess", status: :created } and return
    end
    render json: {errors: {message: @post.errors},status: 500} and return
  end

  def destory
    @post = Post.find_by(id: params[:id])
    render json: {errors: {message: "Record Not Found"}, status: 404} and return unless @post
    @post.destroy
    render json: {message: "Accepted",status: 202}
  end

end
