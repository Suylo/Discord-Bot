#  frozen_string_literal: true

# GetServerIconInfo allows users to see URL and ID of the discord server
module GetServerIconInfo
  extend Discordrb::Commands::CommandContainer

  command(:servericon, aliases: %i[server_icon server_avatar], description: 'Display server\'s icon') do |event|
    server_id = event.server.id
    server_icon_id = event.server.icon_id

    # rubocop:disable Layout/LineLength
    event.respond "Hi #{event.user.mention} ! Here is the URL and ID of the server icon : *#{event.server.name}* \n\n**URL:** https://cdn.discordapp.com/icons/#{server_id}/#{server_icon_id}.png?size=1024\n**ID:** #{server_icon_id}"
    # rubocop:enable Layout/LineLength
    puts "GetServerIcon executed by #{event.user.distinct} on the server : #{event.server.name}"
  end
end

