require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
    access_token: ENV["ACCSESS_TOKEN"],
    subscribed_fields: %w[feed mention name]
  )

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end