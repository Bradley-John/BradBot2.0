# This example requires the 'message_content' intent.

import discord
import logging

class MyClient(discord.Client):
    async def on_ready(self):
        logger.info("Bot has started.")

        logger.info(f'Logged on as {self.user}!')

    async def on_message(self, message):
        logger.info(f'Message from {message.author}: {message.content}')


logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

intents = discord.Intents.default()
intents.message_content = True

client = MyClient(intents=intents)
client.run('xyz')
