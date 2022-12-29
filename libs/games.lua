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
	--[[ ["292439477"] = {
		GetCharacter = function(Target)
			local shared = getrenv().shared
			local replication = shared.require("ReplicationInterface")

			local TargetCharacter = nil

			replication.operateOnAllEntries(function(player, entry)
				if player.Name == Target.Name then
					local character = entry and entry._thirdPersonObject
					TargetCharacter = character and character._character
				end
			end)
			return TargetCharacter
		end,
		GetRootPart = function(TargetCharacter)
			return TargetCharacter:FindFirstChild("Torso")
		end,
		GetPlayerRootPart = function(Player)
			if Player.Character then
				return Player.Character:FindFirstChild("Torso")
			end
		end,
		GetRigType = function()
			return "R6"
		end
	}, ]]
}
