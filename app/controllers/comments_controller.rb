class CommentsController < ApplicationController
  before_action :set_format_engine
  before_action :require_user, only: [:create, :update]
  skip_before_action :verify_authenticity_token

  def index
    render json: Comments.all
  end

  def show
    render json: Comment.find(params[:id])
  end

  def create
    render json: {errors: {message: "Bad Request"}, status: 400} and return  unless @current_user
    Comment.create!(content: params[:content],post_id:params[:post_id], user_id: @current_user.id)
    render json: {message: "Created", status: 201}
  end

  def update
    render json: {errors: {message: "Bad Request"}, status: 400} and return  unless @current_user
    @comment = Comment.find(params[:id])
    @comment.content = params[:content]
    @comment.user_id = @current_user.id
    @comment.save
    render json: {message: "Accepted", status: 202}
  end

  def destory
    Comment.find(params[:id]).destroy
    render json: {message: "Success", status: 200}
  end
end
