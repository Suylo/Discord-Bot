# frozen_string_literal: true

# Index :: File which is the controller of bot and include the others files

require 'discordrb'
require 'json'

token = File.read('./Utils/token.json')
value_token = JSON.parse(token)

PREFIX = '!'
BOT = Discordrb::Bot.new token: value_token['token']
#  BOT_CMD = Discordrb::Commands::CommandBot.new token: value_token['token'], prefix: PREFIX

# Importation of all variables Utils/Attribs.rb - For a future update
# require_relative 'Utils/Attribs'

#  Importation of all commands - Commands/
require_relative 'Commands/PingCmd'
require_relative 'Commands/StopCmd'
require_relative 'Commands/ThanksCmd'
require_relative 'Commands/GetServerIconInfo'

#  Running the bot ... - Utils/Run.rb
require_relative 'Utils/Run'
run(true)

