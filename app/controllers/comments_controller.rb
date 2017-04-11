class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
    @article = Article.find(params[:id])
  end

  def create
  	@comment = Comment.new(comment_params)
  	@comment.save
  	redirect_to article_path(@comment.article_id)
  end

  def destroy
  end

  private 
  	def comment_params
  		params.require(:comment).permit(:content, :article_id)
  	end
end