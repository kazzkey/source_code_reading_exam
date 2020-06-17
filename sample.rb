require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork
  client = SlackNotify::Client.new(webhook_url: ENV["WEBHOOK"])
  every(3.minutes, 'hello') do
    client.notify("Hello World!")
  end
end
