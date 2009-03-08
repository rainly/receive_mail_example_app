class MessageMailer < ActionMailer::Base

  def outgoing_message(message)
    subject     message.subject
    recipients  message.to_email
    from        message.from_email
    sent_on     Time.now
    body        message.body 
  end  
  
  def receive(message)
    user_id = find_user(message)
    create_message(message, user_id)
  end

  private

  def find_user(message)
    user_name = message.to.first.split('@').first
    user = User.find_by_name(user_name)
    user ? user.id : (raise "Couldn't find user #{user_name}")
  end

  def create_message(message, user_id)
    Message.create!(:body => message.body,
                    :subject => message.subject,
                    :to_email => message.to.first,
                    :from_email => message.from,
                    :user_id => user_id)
  end

end
