# frozen_string_literal: true

def run(action)
  if action == true
    puts '------------'
    puts "Link to invite the Bot : #{BOT.invite_url}"
    puts ''
    BOT.run
  else
    puts 'No parameters or a bad one has been set. Exemple use run(true) / run(false)'
  end
end
