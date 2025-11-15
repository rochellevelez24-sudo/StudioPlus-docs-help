local TeamChatService = {}
TeamChatService.teams = {}
function TeamCreateService:AddPlayerOnTeam(teamName, user)
  if table.find(TeamChatService.teams, teamName) then
     TeamChatService.teams["Joined"] = user
  end
end
function TeamChatService:GetPlayerJoined(team, user)
  if table.find(TeamChatService.teams, team) then
    return table.find(TeamChatService.teams.Joined, user)
  end
end
function TeamChatService:BubbleChatMessage(team,user, message)
  if TeamChatService:GetPlayerJoined(team, user) then
    game:GetService("TextChatService"):DisplayBubble(user, message)
  end
end
return TeamChatService
