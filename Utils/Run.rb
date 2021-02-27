# frozen_string_literal: true

# Run :: File which allows to run the bot thanks to the function

def run(action)
  if action == true
    2.times do
      puts ''
    end
    puts '------------'
    puts "Voici le lien pour inviter le bot : #{BOT.invite_url}"
    puts ''
    BOT.run
  else
    puts 'Vous n\'avez pas défini d\'action lors de la séquence de démarrage du BOT !'
  end
end

