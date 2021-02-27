#  frozen_string_literal: true

#  UserAttributes FROM https://rubydoc.info/gems/discordrb/3.4.0/Discordrb/UserAttributes

# Name : Suylo
USERNAME = event.user.username

# Name + Tag : Suylo#0002
USER_DISTINCT = event.user.distinct

# Bot account or not (boolean)
USER_BOT_ACC = event.user.bot_account?

# Discriminator part (#0002)
USER_TAG = event.user.tag
USER_MENTION = event.user.mention

# Get Avatar ID/URL
USER_AVATAR_URL = event.user.avatar_url
USER_AVATAR_ID = event.user.avatar_id

# ServerAttributes FROM https://rubydoc.info/gems/discordrb/3.4.0/Discordrb/ServerAttributes

# Get Server Name
SERVER_NAME = event.server.name

# Get Icon ID/URL of Discord Server
SERVER_ICON_ID = event.server.icon_id
SERVER_ICON_URL = event.server.icon_url


# MemberAttributes FROM https://www.rubydoc.info/github/meew0/discordrb/Discordrb/MemberAttributes

# List of all server the members which he is present
MEMBER_SERVER = event.member.server

# Get Array of all ranks the member haves
MEMBER_ROLES = event.member.roles

# Return the nickname of member | nil if not
MEMBER_NICK = event.member.nickname

# Date of the member joined this server
MEMBER_JOINED_AT = event.member.joined_at

# Return if member boosting the server | nil if not
MEMBER_BOOSTING = event.member.boosting_since
