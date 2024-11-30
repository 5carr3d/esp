local Utility = {}

Utility.Version = "1.0.0"

-- Determine Rig Type
function Utility.IsR6(character)
    return character:FindFirstChild("Torso") and character:FindFirstChild("Left Arm")
end

function Utility.IsR15(character)
    return character:FindFirstChild("UpperTorso") and character:FindFirstChild("RightUpperArm")
end

function Utility.GetRigType(character)
    if Utility.IsR6(character) then
        return "R6"
    elseif Utility.IsR15(character) then
        return "R15"
    else
        return nil
    end
end

-- Get Corners of a Part
function Utility.GetCorners(part)
    if not part then return nil end
    local cf = part.CFrame
    local size = part.Size / 2

    local offsets = {
        Vector3.new(size.X, size.Y, size.Z), -- TopFrontRight
        Vector3.new(-size.X, size.Y, size.Z), -- TopFrontLeft
        Vector3.new(size.X, -size.Y, size.Z), -- BottomFrontRight
        Vector3.new(-size.X, -size.Y, size.Z), -- BottomFrontLeft
        Vector3.new(size.X, size.Y, -size.Z), -- TopBackRight
        Vector3.new(-size.X, size.Y, -size.Z), -- TopBackLeft
        Vector3.new(size.X, -size.Y, -size.Z), -- BottomBackRight
        Vector3.new(-size.X, -size.Y, -size.Z) -- BottomBackLeft
    }

    local corners = {}
    for i, offset in ipairs(offsets) do
        corners[i] = (cf * offset).Position
    end

    return {
        topFrontRight = corners[1],
        topFrontLeft = corners[2],
        bottomFrontRight = corners[3],
        bottomFrontLeft = corners[4],
        topBackRight = corners[5],
        topBackLeft = corners[6],
        bottomBackRight = corners[7],
        bottomBackLeft = corners[8]
    }
end

-- Get Bone Positions Dynamically
function Utility.GetBonePositions(character, camera, rigType)
    local R6Bones = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
    local R15Bones = {
        "Head", "UpperTorso", "RightUpperArm", "RightLowerArm",
        "LeftUpperArm", "LeftLowerArm", "RightUpperLeg", "RightLowerLeg",
        "LeftUpperLeg", "LeftLowerLeg"
    }
    local bones = {}
    local boneList = rigType == "R6" and R6Bones or R15Bones

    for _, partName in ipairs(boneList) do
        local part = character:FindFirstChild(partName)
        if part then
            local corners = Utility.GetCorners(part)
            if corners then
                bones[partName] = {
                    to = camera:WorldToViewportPoint((corners.topFrontLeft + corners.topBackRight) / 2),
                    from = camera:WorldToViewportPoint((corners.bottomFrontLeft + corners.bottomBackRight) / 2)
                }
            end
        end
    end

    return bones
end

-- Version Check
function Utility.CheckVersion(requiredVersion)
    local function SplitVersion(version)
        local major, minor, patch = version:match("^(%d+)%.(%d+)%.(%d+)$")
        return tonumber(major), tonumber(minor), tonumber(patch)
    end

    local currentMajor, currentMinor, currentPatch = SplitVersion(Utility.Version)
    local requiredMajor, requiredMinor, requiredPatch = SplitVersion(requiredVersion)

    if requiredMajor > currentMajor then return false end
    if requiredMinor > currentMinor then return false end
    if requiredPatch > currentPatch then return false end
    return true
end

return Utility
