# frozen_string_literal: true

# ThanksCmd allows you to thank [someone in particular] => later
module ThanksCmd

  command :merci do |event|
    counter_info = File.read('utils/sources.json')
    value_counter = JSON.parse(counter_info)

    value_counter['counter'] += 1
    File.write('utils/sources.json', JSON.dump(value_counter))

    user_mention = event.user.mention
    user_distinct = event.user.distinct
    server_name = event.server.name

    event.respond "#{user_mention},  #{value_counter['counter']} remerciements!"
    puts "ThanksCmd executed by #{user_distinct} on the server : #{server_name}"
  end
end