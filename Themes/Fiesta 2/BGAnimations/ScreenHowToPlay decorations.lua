local t = Def.ActorFrame {}

local player1 = "";
local player2 = "";

-- Check if p1 is playing
if PROFILEMAN:IsPersistentProfile(PLAYER_1) then
    if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
        local profile = PROFILEMAN:GetProfile(PLAYER_1);
        if profile then
            player1 = profile:GetDisplayName();
        end;
    end;
end;

-- Check if p2 is playing
if PROFILEMAN:IsPersistentProfile(PLAYER_2) then
    if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
        local profile = PROFILEMAN:GetProfile(PLAYER_2);
        if profile then
            player2 = profile:GetDisplayName();
        end;
    end;
end;

-- check if both players are beginners
t[#t+1] = Def.ActorFrame {
    InitCommand=function(self)
        if not(player1 == "" or player2 == "") then
            return "ScreenSelectMusic"
        end;
    end;
	OffCommand=cmd(stoptweening;visible,false);
}

return t;