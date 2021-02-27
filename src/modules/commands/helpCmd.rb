# frozen_string_literal: true

# HelpCmd display all commands available on this bot
module HelpCmd
  extend Discordrb::EventContainer
  extend Discordrb::Commands::CommandContainer

  command :help do |channel|
    user_name = channel.user.username
    user_distinct = channel.user.distinct
    user_avatar_url = channel.user.avatar_url('png')
    server_name = channel.server.name
    server_icon_url = channel.server.icon_url

    channel.send_embed do |embed|
      embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: user_name, url: nil, icon_url: user_avatar_url)
      embed.title = 'Liste of commands'
      embed.description = 'List of all commands available and possible to execute'
      embed.colour = '#FF0000'
      embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: server_icon_url)
      # embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://www.ruby-lang.org/images/header-ruby-logo.png')
      embed.add_field(name: '> !servericon', value: 'Displays the URL and ID of the server icon.', inline: true)
      embed.add_field(name: '> !thanks', value: 'Allows you to thank someone, a counter is displayed.', inline: true)
      embed.add_field(name: '> !ping', value: 'Displays the Bot\'s latency time.', inline: true)
      embed.add_field(name: '> !shutdown', value: 'Allows the Owner to shutdown the Bot.', inline: true)
      embed.add_field(name: '> !say', value: 'Allows you to speak instead of the Bot.', inline: true)
    end
    puts "HelpCmd executed by #{user_distinct} on the server : #{server_name}"
  end
end


