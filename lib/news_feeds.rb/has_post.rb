module HasPost
  def self.included(klass)
    klass.send(:after_save, :send_email_news_feeds)
    klass.send(:before_save, :new_post_created)
  end
  def new_post_created
    @new_post = false
    @new_post= true if self.new_record?
  end

  def send_email_news_feeds
    "sending emails"
  end
end
