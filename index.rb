# frozen_string_literal: true

# Import librairies
require 'discordrb'
require 'json'

# Read the token file
token = File.read('./utils/token.json')
value_token = JSON.parse(token)

PREFIX = '!'
BOT = Discordrb::Commands::CommandBot.new token: value_token['token'], prefix: PREFIX

# Import of all commands - src/modules/commands/
# Dynamic require in order to have structured project that is easy to navigate without getting lost in it
commands = Dir["src/modules/commands/*.rb"]
commands.each { |i| require_relative "#{i}" }

# Import of all events - src/modules/events/
events = Dir["src/modules/events/*.rb"]
events.each { |n| require_relative "#{n}" }

# Include cmd modules...
BOT.include! PingCmd
BOT.include! ShutdownCmd
BOT.include! ThanksCmd
BOT.include! GetServerIconInfo
BOT.include! HelpCmd
BOT.include! SayCmd
BOT.include! GetUserAvatar
#BOT.include! GetUserInfos

# Include events modules..
BOT.include! JoinAndLeaveEvent
BOT.include! Ready

#  Running the bot ... - utils/Run.rb
require_relative 'utils/Run'
run(true)


