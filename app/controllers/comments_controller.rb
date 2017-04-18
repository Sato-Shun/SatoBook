class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
    @article = Article.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
  	redirect_to article_path(@comment.article_id)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to article_path(comment.article_id)
  end

  private 
  	def comment_params
  		params.require(:comment).permit(:content, :article_id, :user_id)
  	end
end
