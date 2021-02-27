# frozen_string_literal: true

module JoinAndLeaveEvent
  extend Discordrb::EventContainer

  member_join do |event|
    event.server.channel.send_message "#{event.user.name} a rejoint le serveur discord ! Bienvenue à lui"
  end

  member_leave do |event|
    event.server.channel.send_message "#{event.user.name} a quitté le serveur discord ! Au revoir !"
  end
end