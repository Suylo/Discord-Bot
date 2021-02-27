# frozen_string_literal: true

# HelpCmd display all commands available on this bot
module HelpCmd
  extend Discordrb::EventContainer
  extend Discordrb::Commands::CommandContainer

  command :help do |channel|
    user_name = channel.user.username
    user_distinct = channel.user.distinct
    user_avatar_url = channel.user.avatar_url('png')
    server_name = channel.server.name
    server_icon_url = channel.server.icon_url

    channel.send_embed do |embed|
      embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: user_name, url: nil, icon_url: user_avatar_url)
      embed.title = 'Liste des commandes'
      embed.description = 'Liste non exhaustive de toutes les commandes disponibles et possible à executer'
      embed.colour = '#FF0000'
      embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: server_icon_url)
      # embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://www.ruby-lang.org/images/header-ruby-logo.png')
      embed.add_field(name: '> !servericon', value: 'Affiche l\'URL/ID de l\'image du serveur.', inline: true)
      embed.add_field(name: '> !merci', value: 'Remercie quelqu\'un, un compteur s\'affiche.', inline: true)
      embed.add_field(name: '> !ping', value: 'Affiche le temps de latence du Bot.', inline: true)
      embed.add_field(name: '> !shutdown', value: 'Permet d\'éteindre le Bot.', inline: true)
      embed.add_field(name: '> !say', value: 'Permet de parler à la place du Bot.', inline: true)
    end
    puts "HelpCmd executed by #{user_distinct} on the server : #{server_name}"
  end
end


