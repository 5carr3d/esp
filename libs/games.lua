return {
	["286090429"] = { --Arsenal
		Health = function(Target)
			return Target.NRPBS.Health.Value
		end,
		MaxHealth = function(Target)
			return Target.NRPBS.MaxHealth.Value
		end,
	},
	["5118969548"] = { --Spider
		GetTeam = function(player)
			if player.Character:FindFirstChild("IsSpiderCharacter") then
				return "Spider"
			end
			return "Human"
		end,
	},
	["633284182"] = { --Fireteam
		GetTeam = function(player)
			return player.PlayerData.TeamValue.Value
		end,
	},
	["746820961"] = {
		GetTeam = function(player)
			return player.TeamC.Value
		end,
	},
}
