# Preview all emails at http://localhost:3000/rails/mailers/comment_notifier
class CommentNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_notifier/notify_post_owner
  def notify_post_owner
    last_comment = Comment.last
    CommentNotifierMailer.notify_post_owner last_comment
  end

end
