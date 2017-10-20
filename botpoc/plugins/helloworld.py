import re

from mattermost_bot.bot import listen_to, respond_to


@respond_to('allo', re.IGNORECASE)
def respond_allo(message):
    message.reply(
        'Allô {user}'.format(user=message.body['data']['sender_name'])
    )
