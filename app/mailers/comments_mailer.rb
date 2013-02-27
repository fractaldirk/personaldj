class CommentsMailer < ActionMailer::Base
  default from: "dirkgrandjean@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.activity_notice.subject
  #
  def activity_notice(forum)
    @forum = forum

    mail to: User.order(:id).map(&:email).join(", "), subject: "Personal DJ activity log: new comment"
  end
end
