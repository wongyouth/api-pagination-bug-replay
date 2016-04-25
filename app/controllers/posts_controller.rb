class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @posts = @posts.for_category params[:category] if params[:category]
    @posts = paginate @posts, per_page: 2
    render json: @posts
  end
end
