class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
  end

  def create
    @comment = current_user.comments.new(comment_params)
      if @comment.save
        redirect_to topics_path, notice: 'コメントに成功しました'
      else
        redirect_to topics_path, alert: 'コメントに失敗しました'
      end
  end


  private
  def comment_params
    params.require(:comment).permit(:content,:topic_id)
  end
end
