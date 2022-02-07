class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create!(comment_params)

    CommentNotifierMailer.notify_post_owner(@post.comments.last).deliver_later

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
