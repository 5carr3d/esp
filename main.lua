local a=game:GetService("Players")local b=a.LocalPlayer;local c={}local d=game:GetService("RunService")local e=workspace.CurrentCamera;local f="2.7.1"local g=Color3.fromRGB(0,255,0)local h={}local i=b:GetMouse()local j=false;local k=false;local l=false;local m=Color3.fromRGB(0,255,0)local n=Color3.fromRGB(255,0,0)local o=Color3.fromRGB(0,75,184)local p=3;local q=1;local r=4000;local s=false;local t="2D"local u="Bottom of Screen"local v="Head"local w=15;local x=false;local y=false;local z=false;local A=false;local B=false;local C=false;for D,E in next,a:GetChildren()do c[E.Name]={Line=Drawing.new("Line"),ViewLine=Drawing.new("Line"),HeadDot=Drawing.new("Circle"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}},Boxes={DDD={TopFront=Drawing.new("Line"),TopBack=Drawing.new("Line"),TopLeft=Drawing.new("Line"),TopRight=Drawing.new("Line"),FrontLeft=Drawing.new("Line"),FrontRight=Drawing.new("Line"),BackLeft=Drawing.new("Line"),BackRight=Drawing.new("Line"),BottonFront=Drawing.new("Line"),BottomBack=Drawing.new("Line"),BottomLeft=Drawing.new("Line"),BottomRight=Drawing.new("Line")},DD={Top=Drawing.new("Line"),Left=Drawing.new("Line"),Right=Drawing.new("Line"),Bottom=Drawing.new("Line")}},HealthBar={Back=Drawing.new("Line"),Front=Drawing.new("Line")}}end;local function F()for G,E in next,c do local function H(table)for G,E in pairs(table)do if type(E)=="table"and E.ZIndex~=0 then H(E)elseif type(E)=="table"then E.Visible=false end end end;H(E)end end;local function I(J)local function H(table)for G,E in pairs(table)do if type(E)=="table"and E.ZIndex~=0 then H(E)elseif type(E)=="table"then E:Remove()end end end;H(c[J])c[J]=nil end;local function K()local L=c;for G,D in next,c do if not a:FindFirstChild(tostring(G))then I(G)end end;for D,E in next,a:GetChildren()do if not L[E.Name]then L[E.Name]={JoinTime=os.date("%Y-%m-%d %H:%M:%S"),Line=Drawing.new("Line"),ViewLine=Drawing.new("Line"),HeadDot=Drawing.new("Circle"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}},Boxes={DDD={TopFront=Drawing.new("Line"),TopBack=Drawing.new("Line"),TopLeft=Drawing.new("Line"),TopRight=Drawing.new("Line"),FrontLeft=Drawing.new("Line"),FrontRight=Drawing.new("Line"),BackLeft=Drawing.new("Line"),BackRight=Drawing.new("Line"),BottonFront=Drawing.new("Line"),BottomBack=Drawing.new("Line"),BottomLeft=Drawing.new("Line"),BottomRight=Drawing.new("Line")},DD={Top=Drawing.new("Line"),Left=Drawing.new("Line"),Right=Drawing.new("Line"),Bottom=Drawing.new("Line")}},HealthBar={Back=Drawing.new("Line"),Front=Drawing.new("Line")}}end end;c=L end;local function M(N)local O=N.CFrame;local P=N.Size;local Q={}local R=O+O.LookVector*P.Z/2;local S=O-O.LookVector*P.Z/2;local T=R+R.UpVector*P.Y/2;local U=R-R.UpVector*P.Y/2;local V=S+S.UpVector*P.Y/2;local W=S-S.UpVector*P.Y/2;Q.topFrontRight=(T+T.RightVector*P.X/2).Position;Q.topFrontLeft=(T-T.RightVector*P.X/2).Position;Q.bottomFrontRight=(U+U.RightVector*P.X/2).Position;Q.bottomFrontLeft=(U-U.RightVector*P.X/2).Position;Q.topBackRight=(V+V.RightVector*P.X/2).Position;Q.topBackLeft=(V-V.RightVector*P.X/2).Position;Q.bottomBackRight=(W+W.RightVector*P.X/2).Position;Q.bottomBackLeft=(W-W.RightVector*P.X/2).Position;return Q end;local function X(Y)local Z={head={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local _=M(Y:FindFirstChild("Head"))local a0=M(Y:FindFirstChild("Torso"))local a1=M(Y:FindFirstChild("Left Arm"))local a2=M(Y:FindFirstChild("Right Arm"))local a3=M(Y:FindFirstChild("Left Leg"))local a4=M(Y:FindFirstChild("Right Leg"))Z.head.to=e:WorldToViewportPoint((_.topFrontLeft+_.bottomBackRight)/2)Z.head.from=e:WorldToViewportPoint((_.bottomFrontLeft+_.bottomBackRight)/2)Z.torso.to=e:WorldToViewportPoint((a0.topFrontLeft+a0.topBackRight)/2)Z.torso.from=e:WorldToViewportPoint((a0.bottomFrontLeft+a0.bottomBackRight)/2)Z.rightArm.to=e:WorldToViewportPoint((a2.topFrontLeft+a2.topBackRight)/2)Z.rightArm.from=e:WorldToViewportPoint((a2.bottomFrontLeft+a2.bottomBackRight)/2)Z.leftArm.to=e:WorldToViewportPoint((a1.topFrontLeft+a1.topBackRight)/2)Z.leftArm.from=e:WorldToViewportPoint((a1.bottomFrontLeft+a1.bottomBackRight)/2)Z.leftLeg.to=e:WorldToViewportPoint((a3.topFrontLeft+a3.topBackRight)/2)Z.leftLeg.from=e:WorldToViewportPoint((a3.bottomFrontLeft+a3.bottomBackRight)/2)Z.rightLeg.to=e:WorldToViewportPoint((a4.topFrontLeft+a4.topBackRight)/2)Z.rightLeg.from=e:WorldToViewportPoint((a4.bottomFrontLeft+a4.bottomBackRight)/2)return Z end;local function a5(Y)local Z={head={},upperTorso={},rightUpperArm={},rightLowerArm={},leftUpperArm={},leftLowerArm={},rightUpperLeg={},rightLowerLeg={},leftUpperLeg={},leftLowerLeg={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local _=M(Y:FindFirstChild("Head"))local a6=M(Y:FindFirstChild("UpperTorso"))local a7=M(Y:FindFirstChild("RightUpperArm"))local a8=M(Y:FindFirstChild("RightLowerArm"))local a9=M(Y:FindFirstChild("LeftUpperArm"))local aa=M(Y:FindFirstChild("LeftLowerArm"))local ab=M(Y:FindFirstChild("RightUpperLeg"))local ac=M(Y:FindFirstChild("RightLowerLeg"))local ad=M(Y:FindFirstChild("LeftUpperLeg"))local ae=M(Y:FindFirstChild("LeftLowerLeg"))Z.head.to=e:WorldToViewportPoint((_.topFrontLeft+_.bottomBackRight)/2)Z.head.from=e:WorldToViewportPoint((_.bottomFrontLeft+_.bottomBackRight)/2)Z.upperTorso.to=e:WorldToViewportPoint((a6.topFrontLeft+a6.topBackRight)/2)Z.upperTorso.from=e:WorldToViewportPoint((a6.bottomFrontLeft+a6.bottomBackRight)/2)Z.rightUpperArm.to=e:WorldToViewportPoint((a7.topFrontLeft+a7.topBackRight)/2)Z.rightUpperArm.from=e:WorldToViewportPoint((a7.bottomFrontLeft+a7.bottomBackRight)/2)Z.rightLowerArm.to=e:WorldToViewportPoint((a8.topFrontLeft+a8.topBackRight)/2)Z.rightLowerArm.from=e:WorldToViewportPoint((a8.bottomFrontLeft+a8.bottomBackRight)/2)Z.leftUpperArm.to=e:WorldToViewportPoint((a9.topFrontLeft+a9.topBackRight)/2)Z.leftUpperArm.from=e:WorldToViewportPoint((a9.bottomFrontLeft+a9.bottomBackRight)/2)Z.leftLowerArm.to=e:WorldToViewportPoint((aa.topFrontLeft+aa.topBackRight)/2)Z.leftLowerArm.from=e:WorldToViewportPoint((aa.bottomFrontLeft+aa.bottomBackRight)/2)Z.rightUpperLeg.to=e:WorldToViewportPoint((ab.topFrontLeft+ab.topBackRight)/2)Z.rightUpperLeg.from=e:WorldToViewportPoint((ab.bottomFrontLeft+ab.bottomBackRight)/2)Z.rightLowerLeg.to=e:WorldToViewportPoint((ac.topFrontLeft+ac.topBackRight)/2)Z.rightLowerLeg.from=e:WorldToViewportPoint((ac.bottomFrontLeft+ac.bottomBackRight)/2)Z.leftUpperLeg.to=e:WorldToViewportPoint((ad.topFrontLeft+ad.topBackRight)/2)Z.leftUpperLeg.from=e:WorldToViewportPoint((ad.bottomFrontLeft+ad.bottomBackRight)/2)Z.leftLowerLeg.to=e:WorldToViewportPoint((ae.topFrontLeft+ae.topBackRight)/2)Z.leftLowerLeg.from=e:WorldToViewportPoint((ae.bottomFrontLeft+ae.bottomBackRight)/2)return Z end;local function af()K()local function ag(ah,ai,aj,ak,al,am,an)local ao=ah;ao.Visible=al;ao.From=aj;ao.To=ai;ao.Color=ak;ao.Thickness=am;ao.Transparency=an end;local function ap(ah,aq,ak,al,am,ar,an,as,at)local au=ah;au.Visible=al;au.Position=aq;au.Color=ak;au.Thickness=am;au.NumSides=as;au.Radius=at;au.Filled=ar;au.Transparency=an end;for G,E in next,c do local av=a[G]local aw={["286090429"]={Health=function()return av.NRPBS.Health.Value end,MaxHealth=function()return av.NRPBS.MaxHealth.Value end}}local ax=av.Character;if aw[tostring(game.PlaceId)]and aw[tostring(game.PlaceId)].GetCharacter~=nil then ax=aw[game.PlaceId].GetCharacter(av)end;if av~=b and ax and ax:FindFirstChild("Head")and ax:FindFirstChild("HumanoidRootPart")then local ay,az=e:WorldToViewportPoint(ax.Head.CFrame.Position)local aA=ay.X;local aB=ay.Y;local _=ax:FindFirstChild("Head")local aC=m;if a[G].Team~=b.Team then aC=n end;if l then aC=a[G].TeamColor.Color end;if k then local aD={b.Character,e}for D,E in pairs(h)do table.insert(aD,E)end;local aE=RaycastParams.new()aE.FilterType=Enum.RaycastFilterType.Blacklist;aE.FilterDescendantsInstances=aD;aE.IgnoreWater=true;local aF=e.CFrame.Position;local aG=(_.Position-aF).unit*(e.CFrame.Position-_.Position).Magnitude;local aH=workspace:Raycast(aF,aG,aE)if aH then local aI=aH.Instance;if aI.Transparency>=.3 or not aI.CanCollide and aI.ClassName~=Terrain then h[#h+1]=aI end;if not aI:IsDescendantOf(ax)then az=false end end end;if j and a[G].Team==b.Team then az=false end;if(e.CFrame.Position-_.Position).Magnitude>r then az=false end;if s and ax.Humanoid.Health<=0 then az=false end;local function aJ(O)local aK=e:WorldToViewportPoint(O)return Vector2.new(aK.X,aK.Y)end;if x then local aL={["Bottom of Screen"]=function()return Vector2.new(e.ViewportSize.X/2,e.ViewportSize.Y)end,["Center of Screen"]=function()return Vector2.new(e.ViewportSize.X/2,e.ViewportSize.Y/2)end,["Mouse"]=function()return Vector2.new(i.X,i.Y+(e.ViewportSize.Y-i.ViewSizeY)/2)end}local aM={["Head"]=function()return Vector2.new(math.clamp(aA,0,e.ViewportSize.X),math.clamp(aB,0,e.ViewportSize.Y))end,["Torso"]=function()local a0=ax:FindFirstChild("UpperTorso")or ax:FindFirstChild("Torso")local aN=e:WorldToViewportPoint(a0.CFrame.Position or a0.CFrame.Position)return Vector2.new(math.clamp(aN.X,0,e.ViewportSize.X),math.clamp(aN.Y,0,e.ViewportSize.Y))end,["Bottom of Player"]=function()local aO,aP=ax:GetBoundingBox()aO=aO-(aO.Position-ax.HumanoidRootPart.CFrame.Position)local aQ=M({CFrame=aO,Size=aP})return Vector2.new(math.clamp(aJ((aQ.bottomFrontRight+aQ.bottomBackLeft)/2).X,0,e.ViewportSize.X),math.clamp(aJ((aQ.bottomFrontRight+aQ.bottomBackLeft)/2).Y,0,e.ViewportSize.Y))end}ag(E.Line,aM[v](),aL[u](),aC,az,p,q)end;if C then local aR=(b.Character.HumanoidRootPart.Position-ax.HumanoidRootPart.Position).Magnitude;local aS=ax.Head.CFrame;aS=aS+aS.LookVector*w;ag(E.ViewLine,aJ(aS.Position),Vector2.new(math.clamp(aA,0,e.ViewportSize.X),math.clamp(aB,0,e.ViewportSize.Y)),o,az,math.clamp(1/aR*100,0.1,2),q)end;if z then local aT=M(ax.Head)local aU=e:WorldToViewportPoint(aT.topFrontLeft)local aV=e:WorldToViewportPoint(aT.bottomBackRight)local aW=e:WorldToViewportPoint(aT.topFrontRight)local aX=e:WorldToViewportPoint(aT.bottomBackLeft)local aY=e:WorldToViewportPoint(aT.bottomFrontLeft)local aZ=(Vector2.new(aU.X,aU.Y)-Vector2.new(aV.X,aV.Y)).Magnitude/6;local a_=(Vector2.new(aW.X,aW.Y)-Vector2.new(aX.X,aX.Y)).Magnitude/6;local b0=(Vector2.new(aW.X,aW.Y)-Vector2.new(aY.X,aY.Y)).Magnitude/6;local at=(aZ+a_)/2;ap(E.HeadDot,Vector2.new(math.clamp(aA,0,e.ViewportSize.X),math.clamp(aB,0,e.ViewportSize.Y)),aC,az,1,true,q,12,at)end;if y then local b1=ax.Humanoid.RigType.Name;if b1=="R15"then local b2=a5(ax)ag(E.Bones[b1].Head,Vector2.new(b2.head.to.X,b2.head.to.Y),Vector2.new(b2.upperTorso.to.X,b2.upperTorso.to.Y),aC,az,1.5,q)ag(E.Bones[b1].UpperTorso,Vector2.new(b2.upperTorso.to.X,b2.upperTorso.to.Y),Vector2.new(b2.upperTorso.from.X,b2.upperTorso.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightShoulder,Vector2.new(b2.rightUpperArm.to.X,b2.rightUpperArm.to.Y),Vector2.new(b2.upperTorso.to.X,b2.upperTorso.to.Y),aC,az,1.5,q)ag(E.Bones[b1].RightUpperArm,Vector2.new(b2.rightUpperArm.to.X,b2.rightUpperArm.to.Y),Vector2.new(b2.rightUpperArm.from.X,b2.rightUpperArm.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightLowerArm,Vector2.new(b2.rightLowerArm.from.X,b2.rightLowerArm.from.Y),Vector2.new(b2.rightUpperArm.from.X,b2.rightUpperArm.from.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftShoulder,Vector2.new(b2.leftUpperArm.to.X,b2.leftUpperArm.to.Y),Vector2.new(b2.upperTorso.to.X,b2.upperTorso.to.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftUpperArm,Vector2.new(b2.leftUpperArm.to.X,b2.leftUpperArm.to.Y),Vector2.new(b2.leftUpperArm.from.X,b2.leftUpperArm.from.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftLowerArm,Vector2.new(b2.leftLowerArm.from.X,b2.leftLowerArm.from.Y),Vector2.new(b2.leftUpperArm.from.X,b2.leftUpperArm.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightGroin,Vector2.new(b2.rightUpperLeg.to.X,b2.rightUpperLeg.to.Y),Vector2.new(b2.upperTorso.from.X,b2.upperTorso.from.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftGroin,Vector2.new(b2.leftUpperLeg.to.X,b2.leftUpperLeg.to.Y),Vector2.new(b2.upperTorso.from.X,b2.upperTorso.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightUpperLeg,Vector2.new(b2.rightUpperLeg.to.X,b2.rightUpperLeg.to.Y),Vector2.new(b2.rightUpperLeg.from.X,b2.rightUpperLeg.from.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftUpperLeg,Vector2.new(b2.leftUpperLeg.to.X,b2.leftUpperLeg.to.Y),Vector2.new(b2.leftUpperLeg.from.X,b2.leftUpperLeg.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightLowerLeg,Vector2.new(b2.rightLowerLeg.from.X,b2.rightLowerLeg.from.Y),Vector2.new(b2.rightUpperLeg.from.X,b2.rightUpperLeg.from.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftLowerLeg,Vector2.new(b2.leftLowerLeg.from.X,b2.leftLowerLeg.from.Y),Vector2.new(b2.leftUpperLeg.from.X,b2.leftUpperLeg.from.Y),aC,az,1.5,q)else local b2=X(ax)ag(E.Bones[b1].Head,Vector2.new(b2.head.to.X,b2.head.to.Y),Vector2.new(b2.torso.to.X,b2.torso.to.Y),aC,az,1.5,q)ag(E.Bones[b1].Torso,Vector2.new(b2.torso.to.X,b2.torso.to.Y),Vector2.new(b2.torso.from.X,b2.torso.from.Y),aC,az,1.5,q)ag(E.Bones[b1].RightShoulder,Vector2.new(b2.torso.to.X,b2.torso.to.Y),Vector2.new(b2.rightArm.to.X,b2.rightArm.to.Y),aC,az,1.5,q)ag(E.Bones[b1].RightArm,Vector2.new(b2.rightArm.from.X,b2.rightArm.from.Y),Vector2.new(b2.rightArm.to.X,b2.rightArm.to.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftShoulder,Vector2.new(b2.torso.to.X,b2.torso.to.Y),Vector2.new(b2.leftArm.to.X,b2.leftArm.to.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftArm,Vector2.new(b2.leftArm.from.X,b2.leftArm.from.Y),Vector2.new(b2.leftArm.to.X,b2.leftArm.to.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftGroin,Vector2.new(b2.torso.from.X,b2.torso.from.Y),Vector2.new(b2.leftLeg.to.X,b2.leftLeg.to.Y),aC,az,1.5,q)ag(E.Bones[b1].RightGroin,Vector2.new(b2.torso.from.X,b2.torso.from.Y),Vector2.new(b2.rightLeg.to.X,b2.rightLeg.to.Y),aC,az,1.5,q)ag(E.Bones[b1].LeftLeg,Vector2.new(b2.leftLeg.from.X,b2.leftLeg.from.Y),Vector2.new(b2.leftLeg.to.X,b2.leftLeg.to.Y),aC,az,1.5,q)ag(E.Bones[b1].RightLeg,Vector2.new(b2.rightLeg.from.X,b2.rightLeg.from.Y),Vector2.new(b2.rightLeg.to.X,b2.rightLeg.to.Y),aC,az,1.5,q)end end;if B then local aO,aP=ax:GetBoundingBox()local aO=CFrame.new(aO.Position,e.CFrame.Position)local aQ=M({CFrame=aO,Size=aP})local b3=aJ((aQ.topFrontRight+aQ.topBackRight)/2)local b4=aJ((aQ.bottomFrontRight+aQ.bottomBackRight)/2)b3=Vector2.new(b3.X-10,b3.Y)b4=Vector2.new(b3.X,b4.Y)ag(E.HealthBar.Back,b3,b4,Color3.new(1,0,0),az,e.ViewportSize.X/192,1)local b5=ax.Humanoid.Health or aw[tostring(game.PlaceId)].Health()local b6=ax.Humanoid.MaxHealth or aw[tostring(game.PlaceId)].MaxHealth()local b7=b5/b6;local aR=(b3-b4).Magnitude*b7;ag(E.HealthBar.Front,Vector2.new(b4.X,b4.Y-aR),b4,Color3.new(0,1,0),az,e.ViewportSize.X/192,1)end;if A and t=="3D"then local aO,aP=ax:GetBoundingBox()local aQ=M({CFrame=aO,Size=aP})ag(E.Boxes.DDD.TopFront,aJ(aQ.topFrontLeft),aJ(aQ.topFrontRight),aC,az,1.5,q)ag(E.Boxes.DDD.TopLeft,aJ(aQ.topFrontLeft),aJ(aQ.topBackLeft),aC,az,1.5,q)ag(E.Boxes.DDD.TopRight,aJ(aQ.topFrontRight),aJ(aQ.topBackRight),aC,az,1.5,q)ag(E.Boxes.DDD.TopBack,aJ(aQ.topBackLeft),aJ(aQ.topBackRight),aC,az,1.5,q)ag(E.Boxes.DDD.FrontLeft,aJ(aQ.topFrontLeft),aJ(aQ.bottomFrontLeft),aC,az,1.5,q)ag(E.Boxes.DDD.FrontRight,aJ(aQ.topFrontRight),aJ(aQ.bottomFrontRight),aC,az,1.5,q)ag(E.Boxes.DDD.BackRight,aJ(aQ.topBackRight),aJ(aQ.bottomBackRight),aC,az,1.5,q)ag(E.Boxes.DDD.BackLeft,aJ(aQ.topBackLeft),aJ(aQ.bottomBackLeft),aC,az,1.5,q)ag(E.Boxes.DDD.BottonFront,aJ(aQ.bottomFrontLeft),aJ(aQ.bottomFrontRight),aC,az,1.5,q)ag(E.Boxes.DDD.BottomLeft,aJ(aQ.bottomFrontLeft),aJ(aQ.bottomBackLeft),aC,az,1.5,q)ag(E.Boxes.DDD.BottomRight,aJ(aQ.bottomFrontRight),aJ(aQ.bottomBackRight),aC,az,1.5,q)ag(E.Boxes.DDD.BottomBack,aJ(aQ.bottomBackLeft),aJ(aQ.bottomBackRight),aC,az,1.5,q)elseif A and t=="2D"then local aO,aP=ax:GetBoundingBox()aO=aO-(aO.Position-ax.HumanoidRootPart.CFrame.Position)local aQ=M({CFrame=aO,Size=aP})ag(E.Boxes.DD.Top,aJ((aQ.topFrontLeft+aQ.topBackLeft)/2),aJ((aQ.topFrontRight+aQ.topBackRight)/2),aC,az,1.5,q)ag(E.Boxes.DD.Left,aJ((aQ.topFrontLeft+aQ.topBackLeft)/2),aJ((aQ.bottomFrontLeft+aQ.bottomBackLeft)/2),aC,az,1.5,q)ag(E.Boxes.DD.Right,aJ((aQ.topFrontRight+aQ.topBackRight)/2),aJ((aQ.bottomFrontRight+aQ.bottomBackRight)/2),aC,az,1.5,q)ag(E.Boxes.DD.Bottom,aJ((aQ.bottomFrontLeft+aQ.bottomBackLeft)/2),aJ((aQ.bottomFrontRight+aQ.bottomBackRight)/2),aC,az,1.5,q)end end end end;local b8={WindowName="5carr3d's Esp - v"..f,Color=Color3.fromRGB(255,128,64),Keybind=Enum.KeyCode.F2}local b9=loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()local ba=b9:CreateWindow(b8,game:GetService("CoreGui"))local bb=ba:CreateTab("Main")local bc=ba:CreateTab("UI Settings / Misc")local bd=bb:CreateSection("Toggles")local be=bb:CreateSection("Options")local bf=bb:CreateSection("Colors")local bg=bc:CreateSection("Menu")local bh=bc:CreateSection("Changelog")bd:CreateToggle("Toggle ESP",true,function(bi)if bi then d:BindToRenderStep("Player",0,af)else d:UnbindFromRenderStep("Player")for G,D in next,c do I(G)end end end)bd:CreateToggle("Toggle Tracer",x,function(bi)x=bi;if not bi then F()end end)bd:CreateToggle("Toggle Direction Tracer",C,function(bi)C=bi;if not bi then F()end end)bd:CreateToggle("Toggle Boxes",A,function(bi)A=bi;if not bi then F()end end)bd:CreateToggle("Toggle HealthBar",B,function(bi)B=bi;if not bi then F()end end)bd:CreateToggle("Toggle Bones",y,function(bi)y=bi;if not bi then F()end end)bd:CreateToggle("Toggle Head Dot",z,function(bi)z=bi;if not bi then F()end end)local bj=bf:CreateColorpicker("Team Color",function(bi)m=bi;g=bi end)bj:UpdateColor(m)local bk=bf:CreateColorpicker("Enemy Color",function(bi)n=bi end)bk:UpdateColor(n)local bl=bf:CreateColorpicker("Direction Tracer Color",function(bi)o=bi end)bl:UpdateColor(o)bf:CreateToggle("Use Team Color",l,function(bi)l=bi;if not bi then m=g end end)be:CreateToggle("Toggle Team Check",j,function(bi)j=bi end)be:CreateToggle("Hide Dead",s,function(bi)s=bi end)be:CreateToggle("Toggle Visibility Check",k,function(bi)k=bi end)be:CreateDropdown("Select Box Type",{"2D","3D"},function(bi)t=bi;F()end,"2D")be:CreateDropdown("Tracer Draw From Location",{"Center of Screen","Bottom of Screen","Mouse"},function(bi)u=bi;F()end,u)be:CreateDropdown("Tracer Draw To Location",{"Head","Torso","Bottom of Player"},function(bi)v=bi;F()end,v)be:CreateSlider("Max Distance",0,20000,r,true,function(E)r=E end)be:CreateSlider("Tracer Thickness",1,10,p,true,function(E)p=E end)be:CreateSlider("Transparency",0,1,q,false,function(E)q=E end)be:CreateSlider("Direction Distance",1,30,w,true,function(E)w=E end)local bm=bg:CreateToggle("UI Toggle",nil,function(bn)ba:Toggle(bn)end)bm:CreateKeybind(tostring(b8.Keybind):gsub("Enum.KeyCode.",""),function(bo)b8.Keybind=Enum.KeyCode[bo]end)bm:SetState(true)local bp=bg:CreateColorpicker("UI Color",function(m)ba:ChangeColor(m)end)bp:UpdateColor(b8.Color)local bq=bh:CreateLabel("")bq:UpdateText("v"..f.."\n• Bug Fixes")d:BindToRenderStep("Player",0,af)
