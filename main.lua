local a=game:GetService("Players")local b=a.LocalPlayer;local c={}local d=game:GetService("RunService")local e=workspace.CurrentCamera;local f="2.6"local g=Color3.fromRGB(0,255,0)local h={}local i=false;local j=false;local k=false;local l=Color3.fromRGB(0,255,0)local m=5;local n=1;local o=4000;local p=false;local q="2D"local r=false;local s=false;local t=false;local u=false;local v=false;for w,x in next,a:GetChildren()do c[x.Name]={Line=Drawing.new("Line"),HeadDot=Drawing.new("Circle"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}},Boxes={DDD={TopFront=Drawing.new("Line"),TopBack=Drawing.new("Line"),TopLeft=Drawing.new("Line"),TopRight=Drawing.new("Line"),FrontLeft=Drawing.new("Line"),FrontRight=Drawing.new("Line"),BackLeft=Drawing.new("Line"),BackRight=Drawing.new("Line"),BottonFront=Drawing.new("Line"),BottomBack=Drawing.new("Line"),BottomLeft=Drawing.new("Line"),BottomRight=Drawing.new("Line")},DD={Top=Drawing.new("Line"),Left=Drawing.new("Line"),Right=Drawing.new("Line"),Bottom=Drawing.new("Line")}},HealthBar={Back=Drawing.new("Line"),Front=Drawing.new("Line")}}end;local function y()for z,x in next,c do local function A(table)for z,x in pairs(table)do if type(x)=="table"and x.ZIndex~=0 then A(x)elseif type(x)=="table"then x.Visible=false end end end;A(x)end end;local function B(C)local function A(table)for z,x in pairs(table)do if type(x)=="table"and x.ZIndex~=0 then A(x)elseif type(x)=="table"then x:Remove()end end end;A(c[C])c[C]=nil end;local function D()local E=c;for z,w in next,c do if not a:FindFirstChild(tostring(z))then B(z)end end;for w,x in next,a:GetChildren()do if not E[x.Name]then E[x.Name]={JoinTime=os.date("%Y-%m-%d %H:%M:%S"),Line=Drawing.new("Line"),HeadDot=Drawing.new("Circle"),Bones={R15={Head=Drawing.new("Line"),UpperTorso=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightUpperArm=Drawing.new("Line"),LeftUpperArm=Drawing.new("Line"),RightLowerArm=Drawing.new("Line"),LeftLowerArm=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightUpperLeg=Drawing.new("Line"),LeftUpperLeg=Drawing.new("Line"),RightLowerLeg=Drawing.new("Line"),LeftLowerLeg=Drawing.new("Line")},R6={Head=Drawing.new("Line"),Torso=Drawing.new("Line"),LeftShoulder=Drawing.new("Line"),RightShoulder=Drawing.new("Line"),LeftArm=Drawing.new("Line"),RightArm=Drawing.new("Line"),LeftGroin=Drawing.new("Line"),RightGroin=Drawing.new("Line"),LeftLeg=Drawing.new("Line"),RightLeg=Drawing.new("Line")}},Boxes={DDD={TopFront=Drawing.new("Line"),TopBack=Drawing.new("Line"),TopLeft=Drawing.new("Line"),TopRight=Drawing.new("Line"),FrontLeft=Drawing.new("Line"),FrontRight=Drawing.new("Line"),BackLeft=Drawing.new("Line"),BackRight=Drawing.new("Line"),BottonFront=Drawing.new("Line"),BottomBack=Drawing.new("Line"),BottomLeft=Drawing.new("Line"),BottomRight=Drawing.new("Line")},DD={Top=Drawing.new("Line"),Left=Drawing.new("Line"),Right=Drawing.new("Line"),Bottom=Drawing.new("Line")}},HealthBar={Back=Drawing.new("Line"),Front=Drawing.new("Line")}}end end;c=E end;local function F(G)local H=G.CFrame;local I=G.Size;local J={}local K=H+H.LookVector*I.Z/2;local L=H-H.LookVector*I.Z/2;local M=K+K.UpVector*I.Y/2;local N=K-K.UpVector*I.Y/2;local O=L+L.UpVector*I.Y/2;local P=L-L.UpVector*I.Y/2;J.topFrontRight=(M+M.RightVector*I.X/2).Position;J.topFrontLeft=(M-M.RightVector*I.X/2).Position;J.bottomFrontRight=(N+N.RightVector*I.X/2).Position;J.bottomFrontLeft=(N-N.RightVector*I.X/2).Position;J.topBackRight=(O+O.RightVector*I.X/2).Position;J.topBackLeft=(O-O.RightVector*I.X/2).Position;J.bottomBackRight=(P+P.RightVector*I.X/2).Position;J.bottomBackLeft=(P-P.RightVector*I.X/2).Position;return J end;local function Q(R)local S={head={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local T=F(R:FindFirstChild("Head"))local U=F(R:FindFirstChild("Torso"))local V=F(R:FindFirstChild("Left Arm"))local W=F(R:FindFirstChild("Right Arm"))local X=F(R:FindFirstChild("Left Leg"))local Y=F(R:FindFirstChild("Right Leg"))S.head.to=e:WorldToViewportPoint((T.topFrontLeft+T.bottomBackRight)/2)S.head.from=e:WorldToViewportPoint((T.bottomFrontLeft+T.bottomBackRight)/2)S.torso.to=e:WorldToViewportPoint((U.topFrontLeft+U.topBackRight)/2)S.torso.from=e:WorldToViewportPoint((U.bottomFrontLeft+U.bottomBackRight)/2)S.rightArm.to=e:WorldToViewportPoint((W.topFrontLeft+W.topBackRight)/2)S.rightArm.from=e:WorldToViewportPoint((W.bottomFrontLeft+W.bottomBackRight)/2)S.leftArm.to=e:WorldToViewportPoint((V.topFrontLeft+V.topBackRight)/2)S.leftArm.from=e:WorldToViewportPoint((V.bottomFrontLeft+V.bottomBackRight)/2)S.leftLeg.to=e:WorldToViewportPoint((X.topFrontLeft+X.topBackRight)/2)S.leftLeg.from=e:WorldToViewportPoint((X.bottomFrontLeft+X.bottomBackRight)/2)S.rightLeg.to=e:WorldToViewportPoint((Y.topFrontLeft+Y.topBackRight)/2)S.rightLeg.from=e:WorldToViewportPoint((Y.bottomFrontLeft+Y.bottomBackRight)/2)return S end;local function Z(R)local S={head={},upperTorso={},rightUpperArm={},rightLowerArm={},leftUpperArm={},leftLowerArm={},rightUpperLeg={},rightLowerLeg={},leftUpperLeg={},leftLowerLeg={},torso={},leftArm={},rightArm={},leftLeg={},rightLeg={}}local T=F(R:FindFirstChild("Head"))local _=F(R:FindFirstChild("UpperTorso"))local a0=F(R:FindFirstChild("RightUpperArm"))local a1=F(R:FindFirstChild("RightLowerArm"))local a2=F(R:FindFirstChild("LeftUpperArm"))local a3=F(R:FindFirstChild("LeftLowerArm"))local a4=F(R:FindFirstChild("RightUpperLeg"))local a5=F(R:FindFirstChild("RightLowerLeg"))local a6=F(R:FindFirstChild("LeftUpperLeg"))local a7=F(R:FindFirstChild("LeftLowerLeg"))S.head.to=e:WorldToViewportPoint((T.topFrontLeft+T.bottomBackRight)/2)S.head.from=e:WorldToViewportPoint((T.bottomFrontLeft+T.bottomBackRight)/2)S.upperTorso.to=e:WorldToViewportPoint((_.topFrontLeft+_.topBackRight)/2)S.upperTorso.from=e:WorldToViewportPoint((_.bottomFrontLeft+_.bottomBackRight)/2)S.rightUpperArm.to=e:WorldToViewportPoint((a0.topFrontLeft+a0.topBackRight)/2)S.rightUpperArm.from=e:WorldToViewportPoint((a0.bottomFrontLeft+a0.bottomBackRight)/2)S.rightLowerArm.to=e:WorldToViewportPoint((a1.topFrontLeft+a1.topBackRight)/2)S.rightLowerArm.from=e:WorldToViewportPoint((a1.bottomFrontLeft+a1.bottomBackRight)/2)S.leftUpperArm.to=e:WorldToViewportPoint((a2.topFrontLeft+a2.topBackRight)/2)S.leftUpperArm.from=e:WorldToViewportPoint((a2.bottomFrontLeft+a2.bottomBackRight)/2)S.leftLowerArm.to=e:WorldToViewportPoint((a3.topFrontLeft+a3.topBackRight)/2)S.leftLowerArm.from=e:WorldToViewportPoint((a3.bottomFrontLeft+a3.bottomBackRight)/2)S.rightUpperLeg.to=e:WorldToViewportPoint((a4.topFrontLeft+a4.topBackRight)/2)S.rightUpperLeg.from=e:WorldToViewportPoint((a4.bottomFrontLeft+a4.bottomBackRight)/2)S.rightLowerLeg.to=e:WorldToViewportPoint((a5.topFrontLeft+a5.topBackRight)/2)S.rightLowerLeg.from=e:WorldToViewportPoint((a5.bottomFrontLeft+a5.bottomBackRight)/2)S.leftUpperLeg.to=e:WorldToViewportPoint((a6.topFrontLeft+a6.topBackRight)/2)S.leftUpperLeg.from=e:WorldToViewportPoint((a6.bottomFrontLeft+a6.bottomBackRight)/2)S.leftLowerLeg.to=e:WorldToViewportPoint((a7.topFrontLeft+a7.topBackRight)/2)S.leftLowerLeg.from=e:WorldToViewportPoint((a7.bottomFrontLeft+a7.bottomBackRight)/2)return S end;local function a8()D()local function a9(aa,ab,ac,ad,ae,af,ag)local ah=aa;ah.Visible=ae;ah.From=ac;ah.To=ab;ah.Color=ad;ah.Thickness=af;ah.Transparency=ag end;local function ai(aa,aj,ad,ae,af,ak,ag,al,am)local an=aa;an.Visible=ae;an.Position=aj;an.Color=ad;an.Thickness=af;an.NumSides=al;an.Radius=am;an.Filled=ak;an.Transparency=ag end;for z,x in next,c do local ao=a[z]if ao~=b and ao.Character and ao.Character:FindFirstChild("Head")then local ap,aq=e:WorldToViewportPoint(ao.Character.Head.CFrame.Position)local ar=ap.X;local as=ap.Y;local T=ao.Character:FindFirstChild("Head")if k then l=a[z].TeamColor.Color end;if j then local at={b.Character,e}for w,x in pairs(h)do table.insert(at,x)end;local au=RaycastParams.new()au.FilterType=Enum.RaycastFilterType.Blacklist;au.FilterDescendantsInstances=at;au.IgnoreWater=true;local av=e.CFrame.Position;local aw=(T.Position-av).unit*(e.CFrame.Position-T.Position).Magnitude;local ax=workspace:Raycast(av,aw,au)if ax then local ay=ax.Instance;if ay.Transparency>=.3 or not ay.CanCollide and ay.ClassName~=Terrain then h[#h+1]=ay end;if not ay:IsDescendantOf(ao.Character)then aq=false end end end;if i and a[z].Team==b.Team then aq=false end;if(e.CFrame.Position-T.Position).Magnitude>o then aq=false end;if p and ao.Character.Humanoid.Health<=0 then aq=false end;if r then a9(x.Line,Vector2.new(math.clamp(ar,0,e.ViewportSize.X),math.clamp(as,0,e.ViewportSize.Y)),Vector2.new(e.ViewportSize.X/2,e.ViewportSize.Y),l,aq,m,n)end;if t then local az=F(ao.Character.Head)local aA=e:WorldToViewportPoint(az.topFrontLeft)local aB=e:WorldToViewportPoint(az.bottomBackRight)local aC=e:WorldToViewportPoint(az.topFrontRight)local aD=e:WorldToViewportPoint(az.bottomBackLeft)local aE=e:WorldToViewportPoint(az.bottomFrontLeft)local aF=(Vector2.new(aA.X,aA.Y)-Vector2.new(aB.X,aB.Y)).Magnitude/6;local aG=(Vector2.new(aC.X,aC.Y)-Vector2.new(aD.X,aD.Y)).Magnitude/6;local aH=(Vector2.new(aC.X,aC.Y)-Vector2.new(aE.X,aE.Y)).Magnitude/6;local am=(aF+aG)/2;ai(x.HeadDot,Vector2.new(math.clamp(ar,0,e.ViewportSize.X),math.clamp(as,0,e.ViewportSize.Y)),l,aq,1,true,n,12,am)end;if s then local aI=ao.Character.Humanoid.RigType.Name;if aI=="R15"then local aJ=Z(ao.Character)a9(x.Bones[aI].Head,Vector2.new(aJ.head.to.X,aJ.head.to.Y),Vector2.new(aJ.upperTorso.to.X,aJ.upperTorso.to.Y),l,aq,1.5,n)a9(x.Bones[aI].UpperTorso,Vector2.new(aJ.upperTorso.to.X,aJ.upperTorso.to.Y),Vector2.new(aJ.upperTorso.from.X,aJ.upperTorso.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightShoulder,Vector2.new(aJ.rightUpperArm.to.X,aJ.rightUpperArm.to.Y),Vector2.new(aJ.upperTorso.to.X,aJ.upperTorso.to.Y),l,aq,1.5,n)a9(x.Bones[aI].RightUpperArm,Vector2.new(aJ.rightUpperArm.to.X,aJ.rightUpperArm.to.Y),Vector2.new(aJ.rightUpperArm.from.X,aJ.rightUpperArm.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightLowerArm,Vector2.new(aJ.rightLowerArm.from.X,aJ.rightLowerArm.from.Y),Vector2.new(aJ.rightUpperArm.from.X,aJ.rightUpperArm.from.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftShoulder,Vector2.new(aJ.leftUpperArm.to.X,aJ.leftUpperArm.to.Y),Vector2.new(aJ.upperTorso.to.X,aJ.upperTorso.to.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftUpperArm,Vector2.new(aJ.leftUpperArm.to.X,aJ.leftUpperArm.to.Y),Vector2.new(aJ.leftUpperArm.from.X,aJ.leftUpperArm.from.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftLowerArm,Vector2.new(aJ.leftLowerArm.from.X,aJ.leftLowerArm.from.Y),Vector2.new(aJ.leftUpperArm.from.X,aJ.leftUpperArm.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightGroin,Vector2.new(aJ.rightUpperLeg.to.X,aJ.rightUpperLeg.to.Y),Vector2.new(aJ.upperTorso.from.X,aJ.upperTorso.from.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftGroin,Vector2.new(aJ.leftUpperLeg.to.X,aJ.leftUpperLeg.to.Y),Vector2.new(aJ.upperTorso.from.X,aJ.upperTorso.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightUpperLeg,Vector2.new(aJ.rightUpperLeg.to.X,aJ.rightUpperLeg.to.Y),Vector2.new(aJ.rightUpperLeg.from.X,aJ.rightUpperLeg.from.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftUpperLeg,Vector2.new(aJ.leftUpperLeg.to.X,aJ.leftUpperLeg.to.Y),Vector2.new(aJ.leftUpperLeg.from.X,aJ.leftUpperLeg.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightLowerLeg,Vector2.new(aJ.rightLowerLeg.from.X,aJ.rightLowerLeg.from.Y),Vector2.new(aJ.rightUpperLeg.from.X,aJ.rightUpperLeg.from.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftLowerLeg,Vector2.new(aJ.leftLowerLeg.from.X,aJ.leftLowerLeg.from.Y),Vector2.new(aJ.leftUpperLeg.from.X,aJ.leftUpperLeg.from.Y),l,aq,1.5,n)else local aJ=Q(ao.Character)a9(x.Bones[aI].Head,Vector2.new(aJ.head.to.X,aJ.head.to.Y),Vector2.new(aJ.torso.to.X,aJ.torso.to.Y),l,aq,1.5,n)a9(x.Bones[aI].Torso,Vector2.new(aJ.torso.to.X,aJ.torso.to.Y),Vector2.new(aJ.torso.from.X,aJ.torso.from.Y),l,aq,1.5,n)a9(x.Bones[aI].RightShoulder,Vector2.new(aJ.torso.to.X,aJ.torso.to.Y),Vector2.new(aJ.rightArm.to.X,aJ.rightArm.to.Y),l,aq,1.5,n)a9(x.Bones[aI].RightArm,Vector2.new(aJ.rightArm.from.X,aJ.rightArm.from.Y),Vector2.new(aJ.rightArm.to.X,aJ.rightArm.to.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftShoulder,Vector2.new(aJ.torso.to.X,aJ.torso.to.Y),Vector2.new(aJ.leftArm.to.X,aJ.leftArm.to.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftArm,Vector2.new(aJ.leftArm.from.X,aJ.leftArm.from.Y),Vector2.new(aJ.leftArm.to.X,aJ.leftArm.to.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftGroin,Vector2.new(aJ.torso.from.X,aJ.torso.from.Y),Vector2.new(aJ.leftLeg.to.X,aJ.leftLeg.to.Y),l,aq,1.5,n)a9(x.Bones[aI].RightGroin,Vector2.new(aJ.torso.from.X,aJ.torso.from.Y),Vector2.new(aJ.rightLeg.to.X,aJ.rightLeg.to.Y),l,aq,1.5,n)a9(x.Bones[aI].LeftLeg,Vector2.new(aJ.leftLeg.from.X,aJ.leftLeg.from.Y),Vector2.new(aJ.leftLeg.to.X,aJ.leftLeg.to.Y),l,aq,1.5,n)a9(x.Bones[aI].RightLeg,Vector2.new(aJ.rightLeg.from.X,aJ.rightLeg.from.Y),Vector2.new(aJ.rightLeg.to.X,aJ.rightLeg.to.Y),l,aq,1.5,n)end end;local function aK(H)local aL=e:WorldToViewportPoint(H)return Vector2.new(aL.X,aL.Y)end;if v then local aM,aN=ao.Character:GetBoundingBox()local aM=CFrame.new(aM.Position,e.CFrame.Position)local aO=F({CFrame=aM,Size=aN})local aP=aK((aO.topFrontRight+aO.topBackRight)/2)local aQ=aK((aO.bottomFrontRight+aO.bottomBackRight)/2)aP=Vector2.new(aP.X-10,aP.Y)aQ=Vector2.new(aP.X,aQ.Y)a9(x.HealthBar.Back,aP,aQ,Color3.new(1,0,0),aq,e.ViewportSize.X/192,1)local aR={["286090429"]={Health=function()return ao.NRPBS.Health.Value end,MaxHealth=function()return ao.NRPBS.MaxHealth.Value end}}local aS=ao.Character.Humanoid.Health;local aT=ao.Character.Humanoid.MaxHealth;if aR[tostring(game.PlaceId)]~=nil then aS=aR[tostring(game.PlaceId)].Health()aT=aR[tostring(game.PlaceId)].MaxHealth()end;local aU=aS/aT;local aV=(aP-aQ).Magnitude*aU;a9(x.HealthBar.Front,Vector2.new(aQ.X,aQ.Y-aV),aQ,Color3.new(0,1,0),aq,e.ViewportSize.X/192,1)end;if u and q=="3D"then local aM,aN=ao.Character:GetBoundingBox()local aO=F({CFrame=aM,Size=aN})a9(x.Boxes.DDD.TopFront,aK(aO.topFrontLeft),aK(aO.topFrontRight),l,aq,1.5,n)a9(x.Boxes.DDD.TopLeft,aK(aO.topFrontLeft),aK(aO.topBackLeft),l,aq,1.5,n)a9(x.Boxes.DDD.TopRight,aK(aO.topFrontRight),aK(aO.topBackRight),l,aq,1.5,n)a9(x.Boxes.DDD.TopBack,aK(aO.topBackLeft),aK(aO.topBackRight),l,aq,1.5,n)a9(x.Boxes.DDD.FrontLeft,aK(aO.topFrontLeft),aK(aO.bottomFrontLeft),l,aq,1.5,n)a9(x.Boxes.DDD.FrontRight,aK(aO.topFrontRight),aK(aO.bottomFrontRight),l,aq,1.5,n)a9(x.Boxes.DDD.BackRight,aK(aO.topBackRight),aK(aO.bottomBackRight),l,aq,1.5,n)a9(x.Boxes.DDD.BackLeft,aK(aO.topBackLeft),aK(aO.bottomBackLeft),l,aq,1.5,n)a9(x.Boxes.DDD.BottonFront,aK(aO.bottomFrontLeft),aK(aO.bottomFrontRight),l,aq,1.5,n)a9(x.Boxes.DDD.BottomLeft,aK(aO.bottomFrontLeft),aK(aO.bottomBackLeft),l,aq,1.5,n)a9(x.Boxes.DDD.BottomRight,aK(aO.bottomFrontRight),aK(aO.bottomBackRight),l,aq,1.5,n)a9(x.Boxes.DDD.BottomBack,aK(aO.bottomBackLeft),aK(aO.bottomBackRight),l,aq,1.5,n)elseif u and q=="2D"then local aM,aN=ao.Character:GetBoundingBox()local aO=F({CFrame=aM,Size=aN})a9(x.Boxes.DD.Top,aK((aO.topFrontLeft+aO.topBackLeft)/2),aK((aO.topFrontRight+aO.topBackRight)/2),l,aq,1.5,n)a9(x.Boxes.DD.Left,aK((aO.topFrontLeft+aO.topBackLeft)/2),aK((aO.bottomFrontLeft+aO.bottomBackLeft)/2),l,aq,1.5,n)a9(x.Boxes.DD.Right,aK((aO.topFrontRight+aO.topBackRight)/2),aK((aO.bottomFrontRight+aO.bottomBackRight)/2),l,aq,1.5,n)a9(x.Boxes.DD.Bottom,aK((aO.bottomFrontLeft+aO.bottomBackLeft)/2),aK((aO.bottomFrontRight+aO.bottomBackRight)/2),l,aq,1.5,n)end end end end;local aW={WindowName="5carr3d's Esp - v"..f,Color=Color3.fromRGB(255,128,64),Keybind=Enum.KeyCode.F2}local aX=loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()local aY=aX:CreateWindow(aW,game:GetService("CoreGui"))local aZ=aY:CreateTab("Main")local a_=aY:CreateTab("UI Settings / Misc")local b0=aZ:CreateSection("Toggles")local b1=aZ:CreateSection("Colors")local b2=aZ:CreateSection("Options")local b3=a_:CreateSection("Menu")local b4=a_:CreateSection("Changelog")b0:CreateToggle("Toggle ESP",true,function(b5)if b5 then d:BindToRenderStep("Player",0,a8)else d:UnbindFromRenderStep("Player")for z,w in next,c do B(z)end end end)b0:CreateToggle("Toggle Tracer",r,function(b5)r=b5;if not b5 then y()end end)b0:CreateToggle("Toggle Boxes",u,function(b5)u=b5;if not b5 then y()end end)b0:CreateToggle("Toggle HealthBar",v,function(b5)v=b5;if not b5 then y()end end)b0:CreateToggle("Toggle Bones",s,function(b5)s=b5;if not b5 then y()end end)b0:CreateToggle("Toggle Head Dot",t,function(b5)t=b5;if not b5 then y()end end)local b6=b1:CreateColorpicker("Color",function(b5)l=b5;g=b5 end)b6:UpdateColor(l)b1:CreateToggle("Use Team Color",k,function(b5)k=b5;if not b5 then l=g end end)b2:CreateToggle("Toggle Team Check",i,function(b5)i=b5 end)b2:CreateToggle("Hide Dead",p,function(b5)p=b5 end)b2:CreateToggle("Toggle Visibility Check",j,function(b5)j=b5 end)b2:CreateDropdown("Select Box Type",{"2D","3D"},function(b5)q=b5;y()end,q)b2:CreateSlider("Max Distance",0,20000,o,true,function(x)o=x end)b2:CreateSlider("Tracer Thickness",1,10,m,true,function(x)m=x end)b2:CreateSlider("Transparency",0,1,n,false,function(x)n=x end)local b7=b3:CreateToggle("UI Toggle",nil,function(b8)aY:Toggle(b8)end)b7:CreateKeybind(tostring(aW.Keybind):gsub("Enum.KeyCode.",""),function(b9)aW.Keybind=Enum.KeyCode[b9]end)b7:SetState(true)local ba=b3:CreateColorpicker("UI Color",function(l)aY:ChangeColor(l)end)ba:UpdateColor(aW.Color)local bb=b4:CreateLabel("")bb:UpdateText("v"..f.."\n• Added Healthbar")d:BindToRenderStep("Player",0,a8)
