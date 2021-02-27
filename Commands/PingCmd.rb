#  frozen_string_literal: true

# File which allows the user to see if the bot running correctly !

BOT.message(start_with: "#{PREFIX}ping") do |event|

  user_mention = event.user.mention
  user_distinct = event.user.distinct
  server_name = event.server.name

  msg = event.respond 'Pong !'
  msg.edit "#{user_mention}, Pong ! Latence : #{Time.now - event.timestamp}s"
  puts "PingCmd executed by #{user_distinct} on the server : #{server_name}"
end

