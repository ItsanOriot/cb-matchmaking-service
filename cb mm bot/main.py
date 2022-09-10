from structs import discord, websocket
import asyncio

__TOKEN = "" #insert ur bot token here

asyncio.get_event_loop().create_task(discord.client.start(__TOKEN))
websocket.init()
asyncio.get_event_loop().run_forever()
