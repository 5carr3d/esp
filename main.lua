local a=game:GetService("Players")local b=a.LocalPlayer;local c={}local d=game:GetService("RunService")local e=workspace.CurrentCamera;local f="2.0"local g=Color3.fromRGB(0,255,0)local h={}local i=false;local j=false;local k=false;local l=Color3.fromRGB(0,255,0)local m=5;local n=1;local o=4000;local p=false;local q=false;for r,s in next,a:GetChildren()do c[s.Name]={JoinTime=os.date("%Y-%m-%d %H:%M:%S"),Line=Drawing.new("Line"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}}}end;local function t()for u,r in next,c do c[u].Line.Visible=false;c[u].Bones.R15.Head.Visible=false;c[u].Bones.R15.UpperTorso.Visible=false;c[u].Bones.R15.RightShoulder.Visible=false;c[u].Bones.R15.LeftShoulder.Visible=false;c[u].Bones.R15.RightUpperArm.Visible=false;c[u].Bones.R15.LeftUpperArm.Visible=false;c[u].Bones.R15.RightLowerArm.Visible=false;c[u].Bones.R15.LeftLowerArm.Visible=false;c[u].Bones.R15.RightGroin.Visible=false;c[u].Bones.R15.LeftGroin.Visible=false;c[u].Bones.R15.RightUpperLeg.Visible=false;c[u].Bones.R15.LeftUpperLeg.Visible=false;c[u].Bones.R15.RightLowerLeg.Visible=false;c[u].Bones.R15.LeftLowerLeg.Visible=false;c[u].Bones.R6.Head.Visible=false;c[u].Bones.R6.Torso.Visible=false;c[u].Bones.R6.LeftShoulder.Visible=false;c[u].Bones.R6.RightShoulder.Visible=false;c[u].Bones.R6.LeftArm.Visible=false;c[u].Bones.R6.RightArm.Visible=false;c[u].Bones.R6.LeftGroin.Visible=false;c[u].Bones.R6.RightGroin.Visible=false;c[u].Bones.R6.LeftLeg.Visible=false;c[u].Bones.R6.RightLeg.Visible=false end end;local function v()local w=c;for u,r in next,c do if not a:FindFirstChild(tostring(u))then c[u].Line:Remove()c[u].Bones.R15.Head:Remove()c[u].Bones.R15.UpperTorso:Remove()c[u].Bones.R15.RightShoulder:Remove()c[u].Bones.R15.LeftShoulder:Remove()c[u].Bones.R15.RightUpperArm:Remove()c[u].Bones.R15.LeftUpperArm:Remove()c[u].Bones.R15.RightLowerArm:Remove()c[u].Bones.R15.LeftLowerArm:Remove()c[u].Bones.R15.RightGroin:Remove()c[u].Bones.R15.LeftGroin:Remove()c[u].Bones.R15.RightUpperLeg:Remove()c[u].Bones.R15.LeftUpperLeg:Remove()c[u].Bones.R15.RightLowerLeg:Remove()c[u].Bones.R15.LeftLowerLeg:Remove()c[u].Bones.R6.Head:Remove()c[u].Bones.R6.Torso:Remove()c[u].Bones.R6.LeftShoulder:Remove()c[u].Bones.R6.RightShoulder:Remove()c[u].Bones.R6.LeftArm:Remove()c[u].Bones.R6.RightArm:Remove()c[u].Bones.R6.LeftGroin:Remove()c[u].Bones.R6.RightGroin:Remove()c[u].Bones.R6.LeftLeg:Remove()c[u].Bones.R6.RightLeg:Remove()w[u]=nil end end;for r,s in next,a:GetChildren()do if not w[s.Name]then w[s.Name]={JoinTime=os.date("%Y-%m-%d %H:%M:%S"),Line=Drawing.new("Line"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}}}end end;c=w end;local function x(y)local z=y.CFrame;local A=y.Size;local B={}local C=z+z.LookVector*A.Z/2;local D=z-z.LookVector*A.Z/2;local E=C+C.UpVector*A.Y/2;local F=C-C.UpVector*A.Y/2;local G=D+D.UpVector*A.Y/2;local H=D-D.UpVector*A.Y/2;B.topFrontRight=(E+E.RightVector*A.X/2).Position;B.topFrontLeft=(E-E.RightVector*A.X/2).Position;B.bottomFrontRight=(F+F.RightVector*A.X/2).Position;B.bottomFrontLeft=(F-F.RightVector*A.X/2).Position;B.topBackRight=(G+G.RightVector*A.X/2).Position;B.topBackLeft=(G-G.RightVector*A.X/2).Position;B.bottomBackRight=(H+H.RightVector*A.X/2).Position;B.bottomBackLeft=(H-H.RightVector*A.X/2).Position;return B end;local function I(J)local K={head={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local L=x(J:FindFirstChild("Head"))local M=x(J:FindFirstChild("Torso"))local N=x(J:FindFirstChild("Left Arm"))local O=x(J:FindFirstChild("Right Arm"))local P=x(J:FindFirstChild("Left Leg"))local Q=x(J:FindFirstChild("Right Leg"))K.head.to=e:WorldToViewportPoint((L.topFrontLeft+L.bottomBackRight)/2)K.head.from=e:WorldToViewportPoint((L.bottomFrontLeft+L.bottomBackRight)/2)K.torso.to=e:WorldToViewportPoint((M.topFrontLeft+M.topBackRight)/2)K.torso.from=e:WorldToViewportPoint((M.bottomFrontLeft+M.bottomBackRight)/2)K.rightArm.to=e:WorldToViewportPoint((O.topFrontLeft+O.topBackRight)/2)K.rightArm.from=e:WorldToViewportPoint((O.bottomFrontLeft+O.bottomBackRight)/2)K.leftArm.to=e:WorldToViewportPoint((N.topFrontLeft+N.topBackRight)/2)K.leftArm.from=e:WorldToViewportPoint((N.bottomFrontLeft+N.bottomBackRight)/2)K.leftLeg.to=e:WorldToViewportPoint((P.topFrontLeft+P.topBackRight)/2)K.leftLeg.from=e:WorldToViewportPoint((P.bottomFrontLeft+P.bottomBackRight)/2)K.rightLeg.to=e:WorldToViewportPoint((Q.topFrontLeft+Q.topBackRight)/2)K.rightLeg.from=e:WorldToViewportPoint((Q.bottomFrontLeft+Q.bottomBackRight)/2)return K end;local function R(J)local K={head={},upperTorso={},rightUpperArm={},rightLowerArm={},leftUpperArm={},leftLowerArm={},rightUpperLeg={},rightLowerLeg={},leftUpperLeg={},leftLowerLeg={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local L=x(J:FindFirstChild("Head"))local S=x(J:FindFirstChild("UpperTorso"))local T=x(J:FindFirstChild("RightUpperArm"))local U=x(J:FindFirstChild("RightLowerArm"))local V=x(J:FindFirstChild("LeftUpperArm"))local W=x(J:FindFirstChild("LeftLowerArm"))local X=x(J:FindFirstChild("RightUpperLeg"))local Y=x(J:FindFirstChild("RightLowerLeg"))local Z=x(J:FindFirstChild("LeftUpperLeg"))local _=x(J:FindFirstChild("LeftLowerLeg"))K.head.to=e:WorldToViewportPoint((L.topFrontLeft+L.bottomBackRight)/2)K.head.from=e:WorldToViewportPoint((L.bottomFrontLeft+L.bottomBackRight)/2)K.upperTorso.to=e:WorldToViewportPoint((S.topFrontLeft+S.topBackRight)/2)K.upperTorso.from=e:WorldToViewportPoint((S.bottomFrontLeft+S.bottomBackRight)/2)K.rightUpperArm.to=e:WorldToViewportPoint((T.topFrontLeft+T.topBackRight)/2)K.rightUpperArm.from=e:WorldToViewportPoint((T.bottomFrontLeft+T.bottomBackRight)/2)K.rightLowerArm.to=e:WorldToViewportPoint((U.topFrontLeft+U.topBackRight)/2)K.rightLowerArm.from=e:WorldToViewportPoint((U.bottomFrontLeft+U.bottomBackRight)/2)K.leftUpperArm.to=e:WorldToViewportPoint((V.topFrontLeft+V.topBackRight)/2)K.leftUpperArm.from=e:WorldToViewportPoint((V.bottomFrontLeft+V.bottomBackRight)/2)K.leftLowerArm.to=e:WorldToViewportPoint((W.topFrontLeft+W.topBackRight)/2)K.leftLowerArm.from=e:WorldToViewportPoint((W.bottomFrontLeft+W.bottomBackRight)/2)K.rightUpperLeg.to=e:WorldToViewportPoint((X.topFrontLeft+X.topBackRight)/2)K.rightUpperLeg.from=e:WorldToViewportPoint((X.bottomFrontLeft+X.bottomBackRight)/2)K.rightLowerLeg.to=e:WorldToViewportPoint((Y.topFrontLeft+Y.topBackRight)/2)K.rightLowerLeg.from=e:WorldToViewportPoint((Y.bottomFrontLeft+Y.bottomBackRight)/2)K.leftUpperLeg.to=e:WorldToViewportPoint((Z.topFrontLeft+Z.topBackRight)/2)K.leftUpperLeg.from=e:WorldToViewportPoint((Z.bottomFrontLeft+Z.bottomBackRight)/2)K.leftLowerLeg.to=e:WorldToViewportPoint((_.topFrontLeft+_.topBackRight)/2)K.leftLowerLeg.from=e:WorldToViewportPoint((_.bottomFrontLeft+_.bottomBackRight)/2)return K end;local function a0()v()local function a1(a2,a3,a4,a5,a6,a7,a8)local a9=a2;a9.Visible=a6;a9.From=a4;a9.To=a3;a9.Color=a5;a9.Thickness=a7;a9.Transparency=a8 end;for u,s in next,c do local aa=a[u]if aa.Character and aa.Character:FindFirstChild("Head")then local ab,ac=e:WorldToViewportPoint(aa.Character.Head.CFrame.Position)local ad=ab.X;local ae=ab.Y;local L=aa.Character:FindFirstChild("Head")if k then l=a[u].TeamColor.Color end;if j then local af={b.Character,e}for r,s in pairs(h)do table.insert(af,s)end;local ag=RaycastParams.new()ag.FilterType=Enum.RaycastFilterType.Blacklist;ag.FilterDescendantsInstances=af;ag.IgnoreWater=true;local ah=e.CFrame.Position;local ai=(L.Position-ah).unit*(e.CFrame.Position-L.Position).Magnitude;local aj=workspace:Raycast(ah,ai,ag)if aj then local ak=aj.Instance;if ak.Transparency>=.3 or not ak.CanCollide and ak.ClassName~=Terrain then h[#h+1]=ak end;if not ak:IsDescendantOf(aa.Character)then ac=false end end end;if i and a[u].Team==b.Team then ac=false end;if(e.CFrame.Position-L.Position).Magnitude>o then ac=false end;if p then a1(s.Line,Vector2.new(math.clamp(ad,0,e.ViewportSize.X),math.clamp(ae,0,e.ViewportSize.Y)),Vector2.new(e.ViewportSize.X/2,e.ViewportSize.Y),l,ac,m,n)end;if q then local al=aa.Character.Humanoid.RigType.Name;if al=="R15"then local am=R(aa.Character)a1(s.Bones[al].Head,Vector2.new(am.head.to.X,am.head.to.Y),Vector2.new(am.upperTorso.to.X,am.upperTorso.to.Y),l,ac,1.5,n)a1(s.Bones[al].UpperTorso,Vector2.new(am.upperTorso.to.X,am.upperTorso.to.Y),Vector2.new(am.upperTorso.from.X,am.upperTorso.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightShoulder,Vector2.new(am.rightUpperArm.to.X,am.rightUpperArm.to.Y),Vector2.new(am.upperTorso.to.X,am.upperTorso.to.Y),l,ac,1.5,n)a1(s.Bones[al].RightUpperArm,Vector2.new(am.rightUpperArm.to.X,am.rightUpperArm.to.Y),Vector2.new(am.rightUpperArm.from.X,am.rightUpperArm.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightLowerArm,Vector2.new(am.rightLowerArm.from.X,am.rightLowerArm.from.Y),Vector2.new(am.rightUpperArm.from.X,am.rightUpperArm.from.Y),l,ac,1.5,n)a1(s.Bones[al].LeftShoulder,Vector2.new(am.leftUpperArm.to.X,am.leftUpperArm.to.Y),Vector2.new(am.upperTorso.to.X,am.upperTorso.to.Y),l,ac,1.5,n)a1(s.Bones[al].LeftUpperArm,Vector2.new(am.leftUpperArm.to.X,am.leftUpperArm.to.Y),Vector2.new(am.leftUpperArm.from.X,am.leftUpperArm.from.Y),l,ac,1.5,n)a1(s.Bones[al].LeftLowerArm,Vector2.new(am.leftLowerArm.from.X,am.leftLowerArm.from.Y),Vector2.new(am.leftUpperArm.from.X,am.leftUpperArm.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightGroin,Vector2.new(am.rightUpperLeg.to.X,am.rightUpperLeg.to.Y),Vector2.new(am.upperTorso.from.X,am.upperTorso.from.Y),l,ac,1.5,n)a1(s.Bones[al].LeftGroin,Vector2.new(am.leftUpperLeg.to.X,am.leftUpperLeg.to.Y),Vector2.new(am.upperTorso.from.X,am.upperTorso.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightUpperLeg,Vector2.new(am.rightUpperLeg.to.X,am.rightUpperLeg.to.Y),Vector2.new(am.rightUpperLeg.from.X,am.rightUpperLeg.from.Y),l,ac,1.5,n)a1(s.Bones[al].LeftUpperLeg,Vector2.new(am.leftUpperLeg.to.X,am.leftUpperLeg.to.Y),Vector2.new(am.leftUpperLeg.from.X,am.leftUpperLeg.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightLowerLeg,Vector2.new(am.rightLowerLeg.from.X,am.rightLowerLeg.from.Y),Vector2.new(am.rightUpperLeg.from.X,am.rightUpperLeg.from.Y),l,ac,1.5,n)a1(s.Bones[al].LeftLowerLeg,Vector2.new(am.leftLowerLeg.from.X,am.leftLowerLeg.from.Y),Vector2.new(am.leftUpperLeg.from.X,am.leftUpperLeg.from.Y),l,ac,1.5,n)else local am=I(aa.Character)a1(s.Bones[al].Head,Vector2.new(am.head.to.X,am.head.to.Y),Vector2.new(am.torso.to.X,am.torso.to.Y),l,ac,1.5,n)a1(s.Bones[al].Torso,Vector2.new(am.torso.to.X,am.torso.to.Y),Vector2.new(am.torso.from.X,am.torso.from.Y),l,ac,1.5,n)a1(s.Bones[al].RightShoulder,Vector2.new(am.torso.to.X,am.torso.to.Y),Vector2.new(am.rightArm.to.X,am.rightArm.to.Y),l,ac,1.5,n)a1(s.Bones[al].RightArm,Vector2.new(am.rightArm.from.X,am.rightArm.from.Y),Vector2.new(am.rightArm.to.X,am.rightArm.to.Y),l,ac,1.5,n)a1(s.Bones[al].LeftShoulder,Vector2.new(am.torso.to.X,am.torso.to.Y),Vector2.new(am.leftArm.to.X,am.leftArm.to.Y),l,ac,1.5,n)a1(s.Bones[al].LeftArm,Vector2.new(am.leftArm.from.X,am.leftArm.from.Y),Vector2.new(am.leftArm.to.X,am.leftArm.to.Y),l,ac,1.5,n)a1(s.Bones[al].LeftGroin,Vector2.new(am.torso.from.X,am.torso.from.Y),Vector2.new(am.leftLeg.to.X,am.leftLeg.to.Y),l,ac,1.5,n)a1(s.Bones[al].RightGroin,Vector2.new(am.torso.from.X,am.torso.from.Y),Vector2.new(am.rightLeg.to.X,am.rightLeg.to.Y),l,ac,1.5,n)a1(s.Bones[al].LeftLeg,Vector2.new(am.leftLeg.from.X,am.leftLeg.from.Y),Vector2.new(am.leftLeg.to.X,am.leftLeg.to.Y),l,ac,1.5,n)a1(s.Bones[al].RightLeg,Vector2.new(am.rightLeg.from.X,am.rightLeg.from.Y),Vector2.new(am.rightLeg.to.X,am.rightLeg.to.Y),l,ac,1.5,n)end end end end end;local an={["HeaderWidth"]=200,["AccentColor"]=Color3.new(1,1,1),["PrimaryColor"]=Color3.fromRGB(30,30,30),["SecondaryColor"]=Color3.fromRGB(40,40,40),["TextSize"]=11,["Font"]=Enum.Font.GothamSemibold}local ao=loadstring(game:HttpGet("https://gitlab.com/0x45.xyz/droplib/-/raw/master/drop-minified.lua"))():Init(an,game.CoreGui)local ap=ao:CreateCategory("5carr3d's Esp - "..f)ap:CreateSwitch("Enable",function(aq)if aq then d:BindToRenderStep("Player",0,a0)else d:UnbindFromRenderStep("Player")t()end end,true)local ar=ap:CreateSection("Toggles")local as=ap:CreateSection("Colors")local at=ap:CreateSection("Settings")ar:CreateSwitch("Tracer",function(aq)p=aq;if not aq then t()end end,p)ar:CreateSwitch("Bones",function(aq)q=aq;if not aq then t()end end,q)at:CreateSwitch("Team Check",function(aq)i=aq end,i)at:CreateSwitch("Visibility Check",function(aq)j=aq end,j)as:CreateColorPicker("Color",function(aq)l=aq;g=aq end,true,l)as:CreateSwitch("Team Color",function(aq)k=aq;if not aq then l=g end end,k)at:CreateSlider("Max Distance",function(s)o=s end,0,20000,1,true,o)at:CreateSlider("Thickness",function(s)m=s end,1,10,0.01,true,m)at:CreateSlider("Transparency",function(s)n=s end,0,1,0.01,true,n)d:BindToRenderStep("Player",0,a0)
