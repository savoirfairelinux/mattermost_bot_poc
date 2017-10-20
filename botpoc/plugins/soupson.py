import re

from mattermost_bot.bot import listen_to, respond_to


@respond_to('.*soupson.*', re.IGNORECASE)
def respond_allo(message):
    message.reply(
        "Rien au menu pour aujourd'hui"
    )
