# frozen_string_literal: true

module JoinAndLeaveEvent
  extend Discordrb::EventContainer
  extend Discordrb::Commands::CommandContainer


  member_join do |channel|
    user_name = channel.user.username
    user_avatar_url = channel.user.avatar_url('png')

    channel.server.general_channel.send_embed do |embed|
      embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "#{user_name} joined the server ! Welcome !", url: nil, icon_url: user_avatar_url)
      embed.color = '#32CD32'
    end
  end

  member_leave do |channel|
    user_name = channel.user.username
    user_avatar_url = channel.user.avatar_url('png')

    channel.server.general_channel.send_embed do |embed|
      embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "#{user_name} left the server ! Bye !", url: nil, icon_url: user_avatar_url)
      embed.color = '#FF0000'
    end
  end
end