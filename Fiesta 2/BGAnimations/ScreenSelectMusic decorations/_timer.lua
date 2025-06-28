local t = Def.ActorFrame {
	OnCommand=cmd(playcommand,'StartSelectingSong');
}

t[#t+1] = LoadActor(THEME:GetPathG("","Common Resources/TIMER_MASK.png") )..{
	OnCommand=function(self)
		self:zoom(0.075)
		self:x(cx)
		self:y(22)
		self:play()
		self:MaskSource()
	end
}

t[#t+1] = Def.Sprite {
    Texture = THEME:GetPathG("", "Common Resources/TIMER_FRAME 5x8.jpg"),
    OnCommand = function(self)
        self:SetAllStateDelays(0.02)
        self:setstate(0)
        self:animate(true)

        self:zoom(0.325)
        self:x(cx)
        self:y(22)
        self:MaskDest()
    end
}


-- timer logic using only OnCommand and queuecommand (compatible with old SM)
local current_seconds = 90 -- is actually 1.5x longer than real seconds

t[#t+1] = Def.Actor {
	Name = "CustomTimerBeep",
	OnCommand = function(self)
		self:queuecommand("CheckTimer")
	end,

	CheckTimerCommand = function(self)
        
        if current_seconds > 0 then
            current_seconds = current_seconds - 1
        else
            current_seconds = 90
        end

        if current_seconds < 10 --[[and current_seconds % 2 == 1]] then
            SOUND:PlayOnce(THEME:GetPathS("", "Sounds/TIMER_TICK"))
        end

        self:sleep(1.5)
        self:queuecommand("CheckTimer")
	end
}


return t;