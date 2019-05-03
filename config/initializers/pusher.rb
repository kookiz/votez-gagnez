# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '700362'
Pusher.key = 'cf0ba90792cde0de6409'
Pusher.secret = '77a4a76ee4807a1cff8c'
Pusher.cluster = 'eu'
Pusher.logger = Rails.logger
Pusher.encrypted = true

