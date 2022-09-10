local websocket = loadstring(game:HttpGet("https://raw.githubusercontent.com/ItsanOriot/cb-matchmaking-service/main/cb%20mm%20bot/client/websocket.lua"))() --props to Blue-v3rm for the sick websocket stuff
local ws = websocket.new("ws://localhost:6789")
ws:init(game:GetService('Players').LocalPlayer.UserId) -- sends your ID as an identifier


ws:register("print","Prints text to the in-game console.",function(...)
    local args = {...}
    print(table.concat(args,"/"))
end)


ws:register("MAPn@EFY-P67524DgcG","",function(...)
    local args = {...}
    print(tostring(args))
    game:GetService("ReplicatedStorage").Events.VIPevent:FireServer({ "Warmup" })
	game:GetService("ReplicatedStorage").Events.VIPevent:FireServer({ "Changemap", table.concat(args,"/") });
	wait(5)
	game:GetService("ReplicatedStorage").Events.VIPevent:FireServer({ "Timer1" })
	wait(5)
	game:GetService("ReplicatedStorage").Events.VIPevent:FireServer({ "Timer1" })
	wait(35)
	game:GetService("ReplicatedStorage").Events.VIPevent:FireServer({ "WarmupEnd" })
end)



game.Players.LocalPlayer.Chatted:Connect(function(msg, rec)
    ws:send("msg/["..game.Players.LocalPlayer.Name.."]: "..msg)
end)

game:GetService('RunService').Heartbeat:connect(function()
    print(game:GetService("Workspace").Status.GameOver.value)
    if game:GetService("Workspace").Status.GameOver.value == True then
        print("game ended")
        if game:GetService("Workspace").Status.TWins > game:GetService("Workspace").Status.CTWins then
            print("t win")
            ws:send("msg/Terrorists Win")
        end
        if game:GetService("Workspace").Status.TWins < game:GetService("Workspace").Status.CTWins then
            print("t win")
            ws:send("msg/Counter Terrorists Win")
        end
        if game:GetService("Workspace").Status.TWins == game:GetService("Workspace").Status.CTWins then
            print("tie")
            ws:send("msg/The game ended in a tie")
        end
    end
end)

getgenv().ws = ws

