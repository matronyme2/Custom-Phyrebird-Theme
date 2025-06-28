# Custom-Phyrebird-Theme

This is the version of the Phyrebird's theme I'm working on. I am not related to the main project and its team, but I wanted to modify it too.

## Key features
- The ScreenSelectMusic timer is set to 90, but is now actually counting 135 seconds, as Phoenix uses 1.5s for each timer tick instead of 1s.
- Grades now appear on the ScreenSelectMusic for Player 2. This was a bug that has been fixed.
- Step artist's name now appears on the ScreenEvaluation. This was a bug that has been fixed.
- Titles have been added, thanks to xenogenesis5922 who sent the .PSD file used to make them. They work like player profiles' avatars, as they can be added to the `Save/LocalProfiles/{player_id}/` folder and show up in game. You have to manually add them though, as titles were not intended in the base game (I will try to implement them properly someday).

## Installation
- To use this theme, you will have to replace your current theme from Phyrebird's files. Make sure to make a backup of your current theme if you want to keep it. Place this repository's `Fiesta 2` folder into the `Themes/` folder.
  
- To set titles to your profile, you need to copy the two PNGs (for P1 and P2) of one title from `Themes\Fiesta 2\Graphics\ScreenSystemLayer\Titles`, and paste them into your save profile.
  -  Rename them `Title P1.png` and `Title P2.png`, and you're good to go.
  -  If you want to change the background color of your title, copy the title background from `Themes\Fiesta 2\Graphics\ScreenSystemLayer\Titles Backgrounds` to your save profile folder and rename it `Background.png`.

  Your profile folder should look like this :
  
  ![image](https://github.com/user-attachments/assets/bd38cf5c-4979-46c2-ba94-85b340a094e6)

## Main issues
- The titles have to be two files since there are different offsets for both players and for different titles (some of them are longer, and require different offsets).
- The ScreenSelectMusic's timer has to be changed in the `Themes/Fiesta 2/metrics.ini` and in the `Themes\Fiesta 2\BGAnimations\ScreenSelectMusic decorations\_timer.lua` files, as it uses custom code.

Feel free to download this theme and to modify it at will.

## Credits
- StepP1 was created by xMax/StepF2 team (https://stepf2.blogspot.com/). Check out the in-game credits screen for original Stepmania and StepP1 credits, or visit the original StepP1 website.
- StepP1 1.0.1 to 1.0.3 were made by SheepyChris (https://github.com/sheepyChris/) with help from Team CrackItUp (check out 'Intro' folder for additional credits message).
- Additional credits for stepp1-plus: rayden-61 for all the changes; SofiaXY and The Resistance Simfiles (https://web.facebook.com/TheResistance2019/) for some cosmetic changes and noteskins.
- Team Overcross for the Phoenix Co-op noteskin (edited by rayden-61 for use on non-coop charts).
- Drako, for some graphics and mods to theme.
- Pundy (seohyndy), for the inspiration.
- Xeno (xenogenesis5922), for the title's PSD file and Phoenix Title Tracker file.
- Some other people, please let me know if I need to include you here.
