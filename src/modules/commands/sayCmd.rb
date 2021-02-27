# frozen_string_literal: true

# Allows the user to speak as if he were the bot
module SayCmd
  extend Discordrb::Commands::CommandContainer

  command :say do |event, *args|

    user_distinct = event.user.distinct
    server_name = event.server.name

    event.message.delete
    puts "SayCmd executed by #{user_distinct} on the server : #{server_name}"
    args.join(' ')
  end

end


