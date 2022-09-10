from structs import discord, websocket
import asyncio

__TOKEN = "ODQxOTYyNDc0MTA5NDAzMTM3.YJuYqA.sONK7gQYv0yUsT38rGanJYBc4e8"

asyncio.get_event_loop().create_task(discord.client.start(__TOKEN))
websocket.init()
asyncio.get_event_loop().run_forever()
