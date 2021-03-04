# frozen_string_literal: true

module JoinAndLeaveEvent
  extend Discordrb::EventContainer
  extend Discordrb::Commands::CommandContainer
  DWB = Discordrb::Webhooks


  member_join do |channel|
    channel.server.general_channel.send_embed do |embed|
      embed.title = "#{channel.user.username} joined the server! Welcome!"
      embed.image = DWB::EmbedImage.new(url: "https://cdn.discordapp.com/avatars/#{channel.user.id}/#{channel.user.avatar_id}.png?size=256")
      embed.timestamp = Time.now
      embed.colour = '#5beb78'
      embed.footer = DWB::EmbedFooter.new(text: "##{channel.user.tag}", icon_url: nil)
    end

    puts "#{user_tag} left the server : #{channel.server.name} !"

  end


  member_leave do |channel|
    channel.server.general_channel.send_embed do |embed|
      embed.title = "#{channel.user.username} left the server! Bye bye!"
      embed.image = DWB::EmbedImage.new(url: "https://cdn.discordapp.com/avatars/#{channel.user.id}/#{channel.user.avatar_id}.png?size=256")
      embed.timestamp = Time.now
      embed.colour = '#d64d4d'
      embed.footer = DWB::EmbedFooter.new(text: "##{channel.user.tag}", icon_url: nil)
    end

    puts "#{channel.user.distinct} joined the server : #{channel.server.name} !"

  end
end