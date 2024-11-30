local Util = {}

Util.Version = "1.0.0"

function Util.GetCorners(part)
	local cf = part.CFrame
	local size = part.Size
	local corners = {}

	local frontFaceCenter = (cf + cf.LookVector * size.Z / 2)
	local backFaceCenter = (cf - cf.LookVector * size.Z / 2)

	local topFrontEdgeCenter = frontFaceCenter + frontFaceCenter.UpVector * size.Y / 2
	local bottomFrontEdgeCenter = frontFaceCenter - frontFaceCenter.UpVector * size.Y / 2
	local topBackEdgeCenter = backFaceCenter + backFaceCenter.UpVector * size.Y / 2
	local bottomBackEdgeCenter = backFaceCenter - backFaceCenter.UpVector * size.Y / 2

	corners.topFrontRight = (topFrontEdgeCenter + topFrontEdgeCenter.RightVector * size.X / 2).Position
	corners.topFrontLeft = (topFrontEdgeCenter - topFrontEdgeCenter.RightVector * size.X / 2).Position

	corners.bottomFrontRight = (bottomFrontEdgeCenter + bottomFrontEdgeCenter.RightVector * size.X / 2).Position
	corners.bottomFrontLeft = (bottomFrontEdgeCenter - bottomFrontEdgeCenter.RightVector * size.X / 2).Position

	corners.topBackRight = (topBackEdgeCenter + topBackEdgeCenter.RightVector * size.X / 2).Position
	corners.topBackLeft = (topBackEdgeCenter - topBackEdgeCenter.RightVector * size.X / 2).Position

	corners.bottomBackRight = (bottomBackEdgeCenter + bottomBackEdgeCenter.RightVector * size.X / 2).Position
	corners.bottomBackLeft = (bottomBackEdgeCenter - bottomBackEdgeCenter.RightVector * size.X / 2).Position

	return corners
end

function Util.R6Bones(player, Camera)
	local positions = {
		head = {},
		torso = {},
		leftArm = {},
		rightArm = {},
		leftLeg = {},
		rightLeg = {},
	}

	local Head = Util.GetCorners(player:FindFirstChild("Head"))
	local Torso = Util.GetCorners(player:FindFirstChild("Torso"))
	local LeftArm = Util.GetCorners(player:FindFirstChild("Left Arm"))
	local RightArm = Util.GetCorners(player:FindFirstChild("Right Arm"))
	local LeftLeg = Util.GetCorners(player:FindFirstChild("Left Leg"))
	local RightLeg = Util.GetCorners(player:FindFirstChild("Right Leg"))

	positions.head.to = Camera:WorldToViewportPoint((Head.topFrontLeft + Head.bottomBackRight) / 2)
	positions.head.from = Camera:WorldToViewportPoint((Head.bottomFrontLeft + Head.bottomBackRight) / 2)

	positions.torso.to = Camera:WorldToViewportPoint((Torso.topFrontLeft + Torso.topBackRight) / 2)
	positions.torso.from = Camera:WorldToViewportPoint((Torso.bottomFrontLeft + Torso.bottomBackRight) / 2)

	positions.rightArm.to = Camera:WorldToViewportPoint((RightArm.topFrontLeft + RightArm.topBackRight) / 2)
	positions.rightArm.from = Camera:WorldToViewportPoint((RightArm.bottomFrontLeft + RightArm.bottomBackRight) / 2)

	positions.leftArm.to = Camera:WorldToViewportPoint((LeftArm.topFrontLeft + LeftArm.topBackRight) / 2)
	positions.leftArm.from = Camera:WorldToViewportPoint((LeftArm.bottomFrontLeft + LeftArm.bottomBackRight) / 2)

	positions.leftLeg.to = Camera:WorldToViewportPoint((LeftLeg.topFrontLeft + LeftLeg.topBackRight) / 2)
	positions.leftLeg.from = Camera:WorldToViewportPoint((LeftLeg.bottomFrontLeft + LeftLeg.bottomBackRight) / 2)

	positions.rightLeg.to = Camera:WorldToViewportPoint((RightLeg.topFrontLeft + RightLeg.topBackRight) / 2)
	positions.rightLeg.from = Camera:WorldToViewportPoint((RightLeg.bottomFrontLeft + RightLeg.bottomBackRight) / 2)

	return positions
end

function Util:R15Bones(player, Camera)
	local positions = {
		head = {},
		upperTorso = {},
		rightUpperArm = {},
		rightLowerArm = {},
		leftUpperArm = {},
		leftLowerArm = {},
		rightUpperLeg = {},
		rightLowerLeg = {},
		leftUpperLeg = {},
		leftLowerLeg = {},
		torso = {},
		leftArm = {},
		rightArm = {},
		leftLeg = {},
		rightLeg = {},
	}

	local Head = Util.GetCorners(player:FindFirstChild("Head"))
	local UpperTorso = Util.GetCorners(player:FindFirstChild("UpperTorso"))
	local RightUpperArm = Util.GetCorners(player:FindFirstChild("RightUpperArm"))
	local RightLowerArm = Util.GetCorners(player:FindFirstChild("RightLowerArm"))
	local LeftUpperArm = Util.GetCorners(player:FindFirstChild("LeftUpperArm"))
	local LeftLowerArm = Util.GetCorners(player:FindFirstChild("LeftLowerArm"))
	local RightUpperLeg = Util.GetCorners(player:FindFirstChild("RightUpperLeg"))
	local RightLowerLeg = Util.GetCorners(player:FindFirstChild("RightLowerLeg"))
	local LeftUpperLeg = Util.GetCorners(player:FindFirstChild("LeftUpperLeg"))
	local LeftLowerLeg = Util.GetCorners(player:FindFirstChild("LeftLowerLeg"))

	positions.head.to = Camera:WorldToViewportPoint((Head.topFrontLeft + Head.bottomBackRight) / 2)
	positions.head.from = Camera:WorldToViewportPoint((Head.bottomFrontLeft + Head.bottomBackRight) / 2)

	positions.upperTorso.to = Camera:WorldToViewportPoint((UpperTorso.topFrontLeft + UpperTorso.topBackRight) / 2)
	positions.upperTorso.from =
		Camera:WorldToViewportPoint((UpperTorso.bottomFrontLeft + UpperTorso.bottomBackRight) / 2)

	positions.rightUpperArm.to =
		Camera:WorldToViewportPoint((RightUpperArm.topFrontLeft + RightUpperArm.topBackRight) / 2)
	positions.rightUpperArm.from =
		Camera:WorldToViewportPoint((RightUpperArm.bottomFrontLeft + RightUpperArm.bottomBackRight) / 2)

	positions.rightLowerArm.to =
		Camera:WorldToViewportPoint((RightLowerArm.topFrontLeft + RightLowerArm.topBackRight) / 2)
	positions.rightLowerArm.from =
		Camera:WorldToViewportPoint((RightLowerArm.bottomFrontLeft + RightLowerArm.bottomBackRight) / 2)

	positions.leftUpperArm.to = Camera:WorldToViewportPoint((LeftUpperArm.topFrontLeft + LeftUpperArm.topBackRight) / 2)
	positions.leftUpperArm.from =
		Camera:WorldToViewportPoint((LeftUpperArm.bottomFrontLeft + LeftUpperArm.bottomBackRight) / 2)

	positions.leftLowerArm.to = Camera:WorldToViewportPoint((LeftLowerArm.topFrontLeft + LeftLowerArm.topBackRight) / 2)
	positions.leftLowerArm.from =
		Camera:WorldToViewportPoint((LeftLowerArm.bottomFrontLeft + LeftLowerArm.bottomBackRight) / 2)

	positions.rightUpperLeg.to =
		Camera:WorldToViewportPoint((RightUpperLeg.topFrontLeft + RightUpperLeg.topBackRight) / 2)
	positions.rightUpperLeg.from =
		Camera:WorldToViewportPoint((RightUpperLeg.bottomFrontLeft + RightUpperLeg.bottomBackRight) / 2)

	positions.rightLowerLeg.to =
		Camera:WorldToViewportPoint((RightLowerLeg.topFrontLeft + RightLowerLeg.topBackRight) / 2)
	positions.rightLowerLeg.from =
		Camera:WorldToViewportPoint((RightLowerLeg.bottomFrontLeft + RightLowerLeg.bottomBackRight) / 2)

	positions.leftUpperLeg.to = Camera:WorldToViewportPoint((LeftUpperLeg.topFrontLeft + LeftUpperLeg.topBackRight) / 2)
	positions.leftUpperLeg.from =
		Camera:WorldToViewportPoint((LeftUpperLeg.bottomFrontLeft + LeftUpperLeg.bottomBackRight) / 2)

	positions.leftLowerLeg.to = Camera:WorldToViewportPoint((LeftLowerLeg.topFrontLeft + LeftLowerLeg.topBackRight) / 2)
	positions.leftLowerLeg.from =
		Camera:WorldToViewportPoint((LeftLowerLeg.bottomFrontLeft + LeftLowerLeg.bottomBackRight) / 2)

	return positions
end

return Util
