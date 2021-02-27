#

# Event processed each times the bot is ready
module Ready
  extend Discordrb::EventContainer

  counter_info = File.read('utils/settings.json')
  value = JSON.parse(counter_info)

  ready do |event|
    loop do
      BOT.update_status(value['status_1']['status'], value['status_1']['name'], nil, 0, false, value['status_1']['type'])
      sleep(value['cooldown'])
      BOT.update_status(value['status_2']['status'], value['status_2']['name'], nil, 0, false, value['status_2']['type'])
      sleep(value['cooldown'])
      BOT.update_status(value['status_3']['status'], value['status_3']['name'], nil, 0, false, value['status_3']['type'])
      sleep(value['cooldown'])
      BOT.update_status(value['status_4']['status'], value['status_4']['name'], nil, 0, false, value['status_4']['type'])
      sleep(value['cooldown'])
    end
  end
end
