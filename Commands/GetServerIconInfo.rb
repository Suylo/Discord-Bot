#  frozen_string_literal: true

BOT.message(start_with: "#{PREFIX}servericon") do |event|

  server_name = event.server.name
  server_icon_url = event.server.icon_url
  server_icon_id = event.server.icon_id
  user_mention = event.user.mention
  user_distinct = event.user.distinct

  # rubocop:disable Layout/LineLength
  event.respond "Tiens #{user_mention} ! Voici l'URL/ID de l'icone du discord : *#{server_name}* \n\n**URL:** #{server_icon_url}\n**ID:** #{server_icon_id}"
  # rubocop:enable Layout/LineLength
  puts "GetServerIcon_URL executed by #{user_distinct} on the server : #{server_name}"
end

