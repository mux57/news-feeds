class EmailSender
  #This is just a dummy code.
  # Actual logic can be more complex based on conditions and scenario
  include Json
  include UserJson
  def initialize(obj)
    @obj = obj
    @config ||= "Register Email configuration"
    @subcribers ||= "fetch the subcriber" #module json and user_json can be used to constructing the subcriber list
  end

  def send_emails
    "sending emails to @subscibers"
  end

end
