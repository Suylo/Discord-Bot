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
# Why that ? In order to having a structured project that is easy to navigate without getting lost in it
require_relative 'src/modules/commands/pingCmd'
require_relative 'src/modules/commands/shutdownCmd'
require_relative 'src/modules/commands/thanksCmd'
require_relative 'src/modules/commands/getServerIconInfo'
require_relative 'src/modules/commands/helpCmd'

# Import of all events - src/modules/events/
require_relative 'src/modules/events/joinAndLeave'

# Include cmd modules...
BOT.include! PingCmd
BOT.include! ShutdownCmd
BOT.include! ThanksCmd
BOT.include! GetServerIconInfo
BOT.include! HelpCmd

# Include events modules..
BOT.include! JoinAndLeaveEvent

#  Running the bot ... - utils/Run.rb
require_relative 'utils/Run'
run(true)


