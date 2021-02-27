# frozen_string_literal: true

# Module which allows user to shutdown Bot
module ShutdownCmd
  extend Discordrb::Commands::CommandContainer

  command :shutdown do |event|

    break unless event.user.id == 280370984245264384  # My Discord ID

    user_distinct = event.user.distinct

    BOT.send_message(event.channel.id, '⚡ Bot is shutting down...')
    puts "Shutdown Command executed by the Owners of the Bot : #{user_distinct}"
    exit
  end
end
