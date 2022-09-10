# cb-matchmaking-service
# THIS IS A WORK IN PROGRESS
counterblox got shut down so I can't work on this anymore.
This is a discord bot which uses Synapse X to run a ranked matchmaking system for roblox from a discord bot without needing any human involvment like match staff to start matches.
So far it has:
- Queue system
- Team system which automatically picks team captain
- Team captain chooses a map from the map pool
- Discord bot uses a websocket to communicate the decision to synapse x, and tells it to start the game.
- A lua script (https://github.com/ItsanOriot/cb-matchmaking-service/blob/main/cb%20mm%20bot/client/rblx%20backend.lua) sets up the match and waits for players to join
- Detects when a game ends and reports the winning team.

Still working on:
- Elo adjustments are mostly done, just finishing formatting and waiting for game to come back online.
- Phantom forces version of the game.

How to use:
1. Plug in your bot's token into main.py
2. Join a game of counterblox in a private server
3. Run main.py
4. Use synapse x to execute rblxbackend.lua

Idk if cb will ever come back :( so idk if this will ever take off.
