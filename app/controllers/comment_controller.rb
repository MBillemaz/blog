class CommentController < ApplicationController
    
      def create
        @comment = Comment.new(comment_params)
        @comment.save
        redirect_to post_path(params[:post_id])
      end

      private
      def comment_params
        params.require(:comment)
              .permit(
                :text
              ).merge(post_id: params[:post_id])
      end
  end