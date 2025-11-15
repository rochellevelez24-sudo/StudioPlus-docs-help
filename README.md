# StudioPlus docs + help

A documentation + help that gives you uses of StudioPlus.

Note: This game is beta. so it has bugs.

# Team create use (Services)

```lua
local TextChatService = game:GetService("TextChatService")
local TeamChatPlayer = require(game:GetService("ReplicatedStorage"):WaitForChild("TeamChatPlayer"))
local RBXTextChannel = TextChatService:WaitForChild("RBXChannel")

TeamChatPlayer:DisplayChatBubble(TeamChatPlayer:GetAddedUser("Roblox"), "This message is an test.")
