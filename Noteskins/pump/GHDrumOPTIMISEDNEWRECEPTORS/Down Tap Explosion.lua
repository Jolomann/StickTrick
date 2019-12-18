local sButton = Var "Button";

local Colour = {
	--dance
	Up = "#0000FF",
	Down = "#FFFF00",
	Left = "#FF0000",
	Right = "#00FF00",
	--pump
	DownLeft = "#FF0000",
	DownRight = "#00FF00",
	UpLeft = "#FFFF00",
	UpRight = "#0000FF",
	Center = "#FFA500",
};

local Colour2 = {
	--dance
	Up = "#0000FF",
	Down = "#FFFF00",
	Left = "#FF0000",
	Right = "#00FF00",
	--pump
	DownLeft = "#da3038",
	DownRight = "#187818",
	UpLeft = "#f2e349",
	UpRight = "#3265ec",
	Center = "#ffffb5",
};

local position = {
	--dance
	Up = {-2.5,0},
	Down = {2.5,0},
	Left = {7.5,5.5},
	Right = {-7.5,5.5},
	--pump
	DownLeft = {7.5,5.5},
	DownRight = {-7.5,5.5},
	UpLeft = {2.5,0},
	UpRight = {-2.5,0},
	Center = {0,0},
};

if eButton == nil then
	eButton = 1;
else
	eButton = eButton + 1;
end;

local t = Def.ActorFrame {};

if sButton == "Center" or (eButton == 2 and string.find(GAMESTATE:GetCurrentStyle(pn):GetStepsType() ,"Double") )then
	t = Def.ActorFrame {
		--[[W1Command=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;
		W2Command=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;
		W3Command=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;
		W4Command=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;
		W5Command=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;
		NoneCommand=function(self)
			self:z(0):zoomx(1):diffusealpha(1):zoomy(1):linear(0.1):addz(10):zoomy(1.5):zoomx(1.1):diffusealpha(0)
		end;--]]
		
		LoadActor("HOTKICKSINGLEFRAME")..{
					Name="HottestKick";
					InitCommand=function(self)
						self:blend("BlendMode_Add"):z(5);
					end;
					W1Command=function(self)
							self:playcommand("Move")
					end;
					W2Command=function(self)
							self:playcommand("Move")
					end;
					W3Command=function(self)
							self:playcommand("Move")
					end;
					W4Command=function(self)
							self:playcommand("Move")
					end;
					W5Command=function(self)
							self:playcommand("Move")
					end;
					MoveCommand=function(self)
							self:finishtweening();
								self:z(5);
								self:rotationx(60);
								self:zoomy(1);
								self:zoom(1,1);
								self:linear(0.032);
								self:diffusealpha(0);
								self:linear(0.096);
								self:addz(-10);
								self:zoomy(.4);
								--self:diffuse(color("#6f4300"));
								self:diffusealpha(0);
								--self:rotationx(90);
					end;
				};

		LoadActor("HOTKICKSINGLEFRAME")..{
					Name="HottestKick2";
					InitCommand=function(self)
						self:blend("BlendMode_Add");
					end;
					W1Command=function(self)
							self:playcommand("Move")
					end;
					W2Command=function(self)
							self:playcommand("Move")
					end;
					W3Command=function(self)
							self:playcommand("Move")
					end;
					W4Command=function(self)
							self:playcommand("Move")
					end;
					W5Command=function(self)
							self:playcommand("Move")
					end;
					MoveCommand=function(self)
							self:finishtweening();
								self:z(5);
								self:rotationx(60);
								self:zoomy(1);
								self:zoom(1,1);
								self:linear(0.032);
								self:diffusealpha(0);
								self:linear(0.096);
								self:addz(-10);
								self:zoomy(.4);
								--self:diffuse(color("#6f4300"));
								self:diffusealpha(0);
								--self:rotationx(90);
					end;
				};


		--[[LoadActor("OuterKickBomb")..{
			Name="GreenKick";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):rotationz(180):x(96):rotationy(-2):z(-2):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("KickBomb")..{
			Name="BlueKick";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(32):rotationy(-1):z(0):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("KickBomb")..{
			Name="YellowKick";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(-32):rotationy(1):z(0):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("OuterKickBomb")..{
			Name="RedKick";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(-96):rotationy(2):z(-2):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("OuterKickBomb")..{
			Name="GreenKick2";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):rotationz(180):x(96):rotationy(-2):z(-2):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("KickBomb")..{
			Name="BlueKick2";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(32):rotationy(-1):z(0):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("KickBomb")..{
			Name="YellowKick2";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(-32):rotationy(1):z(0):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
		LoadActor("OuterKickBomb")..{
			Name="RedKick2";
			InitCommand=function(self)
				self:blend("BlendMode_Add"):x(-96):rotationy(2):z(-2):zoom(1,1)
			end;
			W1Command=function(self)
					self:playcommand("Move")
			end;
			W2Command=function(self)
					self:playcommand("Move")
			end;
			W3Command=function(self)
					self:playcommand("Move")
			end;
			W4Command=function(self)
					self:playcommand("Move")
			end;
			W5Command=function(self)
					self:playcommand("Move")
			end;
			MoveCommand=function(self)
					self:finishtweening();
						self:rotationx(0)
						self:zoomy(0);
						self:blend("BlendMode_Add");
						self:zoom(1,1);
						self:diffusealpha(1);
						self:linear(0.1);
						self:zoomy(1);
						self:diffuse(color("#6f4300"));
						self:diffusealpha(0);
						self:rotationx(30);
			end;
		};
	};--]]
};
else
	t = Def.ActorFrame {
		InitCommand=function(self)
			self:y(position[sButton][2]):queuecommand("Reset")
		end;
		ResetCommand=function(self)
			eButton = 0;
		end;
		Def.Sprite {
			Texture=NOTESKIN:GetPath( "_Tap", "Explosion Inside" );
			W1Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W2Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W3Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W4Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W5Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			HoldingOnCommand=function(self)
				self:zoom(1)
			end;
			HoldingOffCommand=function(self)
				self:diffusealpha(0)
			end
		};
		Def.Sprite {
			Texture=NOTESKIN:GetPath( "_Tap", "Explosion Outside" );
			W1Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W2Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W3Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W4Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
			W5Command=function(self)
				self:zoom(1):linear(0.1):zoom(1.5):diffusealpha(0)
			end;
		};
	};
end;

for i=1,10 do
	t[#t+1] = Def.ActorFrame {
		OnCommand=function(self)
			self:rotationx(90);
		end;
		Def.ActorFrame {
			HoldingOnCommand=function(self)
				self:queuecommand("Move")
			end;
			MoveCommand=function(self)
				self:zoom(0.1*math.random(1,6));
				self:diffusealpha(1)
				self:x(0);
				self:z(0);
				self:linear(0.02*math.random(1,10));
				self:x(10*math.random(-3,3));
				self:z(10*math.random(1,6));
				self:linear(0.05);
				self:diffusealpha(0)
				self:linear(0.1);
				self:queuecommand("Move");
			end;
			LoadActor(NOTESKIN:GetPath( "_Hold", "Explosion Part" ))..{
				W1Command=function(self)
					self:diffusealpha(0)
				end;
				W2Command=function(self)
					self:diffusealpha(0)
				end;
				W3Command=function(self)
					self:diffusealpha(0)
				end;
				W4Command=function(self)
					self:diffusealpha(0)
				end;
				W5Command=function(self)
					self:diffusealpha(0)
				end;
				HoldingOnCommand=function(self)
					self:diffusealpha(1)
				end;
				HoldingOffCommand=function(self)
					self:diffusealpha(0)
				end;
			};
		};
	};
end;

return t;

