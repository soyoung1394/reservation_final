class CommentsController < ApplicationController
    
    def create
      @comment = Comment.new
      @comment.user = current_user
      @comment.restaurant = Restaurant.find(params[:restaurant_id])
      @comment.content = params[:comment][:content]
      @comment.save
      
      redirect_to @comment.restaurant
    end

    def destroy
      @comment = Comment.find(params[:id])
      if current_user == @comment.user
        @comment.destroy
      end
      post = Restaurant.find(params[:restaurant_id])
      
      redirect_to post
    end
    
end
