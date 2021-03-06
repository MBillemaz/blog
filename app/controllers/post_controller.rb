class PostController < ApplicationController
    
      def new
        @post = Post.new
      end

      def create
        @post = Post.new(post_params)
        if @post.save
          redirect_to root_path
        else
          render template: '/post/new'
        end
      end

      def show
        @post = Post.find(params[:id])
        @comment = Comment.new
      end

      private
      def post_params
        params.require(:post)
              .permit(
                :name,
                :category_id,
                :description
              )
      end
    
end