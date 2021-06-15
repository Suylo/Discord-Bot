#  frozen_string_literal: true

# GetUserAvatar allows users to see URL and ID of the discord server
module GetUserAvatar
  extend Discordrb::Commands::CommandContainer
  extend Discordrb::UserAttributes

  # rubocop:disable Layout/LineLength
  command(:pp, aliases: %i[avatar profile pdp], arg_types: [Discordrb::User], description: 'Display user\'s avatar.') do |channel, user|

    if user == nil
      user = channel.user
    end
    channel.send_embed do |embed|
      embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "#{channel.user.name} - Here's #{user.name} avatar", url: nil, icon_url: channel.user.avatar_url)
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: "https://cdn.discordapp.com/avatars/#{user.id}/#{user.avatar_id}.png?size=4096")
      embed.color = '#7289DA'
      embed.timestamp = Time.now
      embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "Request from #{channel.user.name}")
    end
    # rubocop:enable Layout/LineLength

    puts "GetUserAvatar executed by #{channel.user.distinct} on the server : #{channel.server.name}"
  end
end


