execute unless score dragonhealth trueEnding_settings matches -2147483648.. run scoreboard players set dragonhealth trueEnding_settings 300

execute unless score ambience trueEnding_settings matches -2147483648.. run scoreboard players set ambience trueEnding_settings 1

execute unless score globalsound trueEnding_settings matches -2147483648.. run scoreboard players set globalsound trueEnding_settings 1

execute unless score pearlbreaking trueEnding_settings matches -2147483648.. run scoreboard players set pearlbreaking trueEnding_settings 1

execute unless score crystalcount trueEnding_settings matches -2147483648.. run scoreboard players set crystalcount trueEnding_settings 1

execute unless score dragontrail trueEnding_settings matches -2147483648.. run scoreboard players set dragontrail trueEnding_settings 1

execute unless score guardphantom trueEnding_settings matches -2147483648.. run scoreboard players set guardphantom trueEnding_settings 1

execute unless score music_boss trueEnding_settings matches -2147483648.. run scoreboard players set music_boss trueEnding_settings 1

execute unless score music_defeat trueEnding_settings matches -2147483648.. run scoreboard players set music_defeat trueEnding_settings 1


execute unless data storage true_ending:storage settings.dragon_music_slider run data modify storage true_ending:storage settings.dragon_music_slider set value "music"


function ls_defaults:defaults/true_ending