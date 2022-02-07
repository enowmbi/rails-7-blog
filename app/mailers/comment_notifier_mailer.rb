class CommentNotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_notifier_mailer.notify_post_owner.subject
  #
  def notify_post_owner(comment)
    @greeting = "Hi"
    @comment = comment

    mail to: "blog-owner@example.org", subject: "New comment"
  end
end
