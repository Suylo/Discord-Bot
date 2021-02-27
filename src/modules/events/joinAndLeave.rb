# frozen_string_literal: true

module JoinAndLeaveEvent
  extend Discordrb::EventContainer

  member_join do |event|
    event.server.channel.send_message "#{event.user.name} has joined the server, welcome !"
  end

  member_leave do |event|
    event.server.channel.send_message "#{event.user.name} has left the server, bye bye !"
  end
end