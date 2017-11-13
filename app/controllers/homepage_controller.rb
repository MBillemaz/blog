class HomepageController < ApplicationController
    
      def index
        @posts = Post.filter(params)
      end
    
  end