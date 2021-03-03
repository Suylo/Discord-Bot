#  frozen_string_literal: true

# GetServerIconInfo allows users to see URL and ID of the discord server
module GetServerIconInfo
  extend Discordrb::Commands::CommandContainer

  command :servericon do |event|
    server_name = event.server.name
    server_icon_url = event.server.icon_url
    server_icon_id = event.server.icon_id
    user_mention = event.user.mention
    user_distinct = event.user.distinct

    # rubocop:disable Layout/LineLength
    event.respond "Hi #{user_mention} ! Here is the URL and ID of the server icon : *#{server_name}* \n\n**URL:** https://cdn.discordapp.com/icons/#{event.server.id}/#{server_icon_id}.png?size=512\n**ID:** #{server_icon_id}"
    # rubocop:enable Layout/LineLength
    puts "GetServerIcon_URL executed by #{user_distinct} on the server : #{server_name}"
  end
end

