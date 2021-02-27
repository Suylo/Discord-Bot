# frozen_string_literal: true

BOT.message(start_with: "#{PREFIX}merci") do |event|
  counter_info = File.read('Utils/sources.json')
  value_counter = JSON.parse(counter_info)

  value_counter['counter'] += 1
  File.write('Utils/sources.json', JSON.dump(value_counter))

  user_mention = event.user.mention
  user_distinct = event.user.distinct
  server_name = event.server.name

  event.respond "#{user_mention},  #{value_counter['counter']} remerciement!"
  puts "ThanksCmd executed by #{user_distinct} on the server : #{server_name}"
end
