#  frozen_string_literal: true

# PingCmd allows users to see the response time of the discord bot
module PingCmd
  extend Discordrb::Commands::CommandContainer

  command :ping do |event|

    user_mention = event.user.mention
    user_distinct = event.user.distinct
    server_name = event.server.name

    msg = event.respond 'Pong !'
    msg.edit "#{user_mention}, Pong ! Latence : #{Time.now - event.timestamp}s"
    puts "PingCmd executed by #{user_distinct} on the server : #{server_name}"
  end

end


