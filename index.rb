# frozen_string_literal: true

# Index :: Controller

require 'discordrb'
require 'json'

token = File.read('./Utils/token.json')
value_token = JSON.parse(token)

PREFIX = '!'
BOT = Discordrb::Bot.new token: value_token['token']

# Utils/Attribs.rb - We'll come back to that later, when I know a bit more.
# require_relative 'Utils/Attribs'

#  Importation of all commands - Commands/
require_relative 'Commands/PingCmd'
require_relative 'Commands/StopCmd'
require_relative 'Commands/ThanksCmd'
require_relative 'Commands/GetServerIconInfo'

#  Running the bot ... - Utils/Run.rb
require_relative 'Utils/Run'
run(true)


