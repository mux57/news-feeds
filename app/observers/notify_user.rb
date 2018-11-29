class NotifyUser < ActiveModel::Observer
  observe :post,
          :comment
  def after_create(obj)
    case obj
    when Post
      #This is just dummy code for how can we handle the sending the email to user after creation of new post
      EmailSender.new(obj).send_emails
    when Comment
      # do something
    end
  end

  def after_update
    # do something
  end
end
