import re

from mattermost_bot.bot import respond_to


@respond_to('.*soupson.*', re.IGNORECASE)
def respond_allo(message):
    message.reply(
        "Rien au menu pour aujourd'hui"
    )
