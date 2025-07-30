local t = Def.ActorFrame {};

t[#t+1] = LoadActor( BGDirB.."/HOW_TO_PLAY.mp4" )..{
	InitCommand=cmd(show_background_properly;loop,true);
	OnCommand=cmd(play);
};

return t;