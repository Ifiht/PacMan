

tellraw @s [{"translate": " "}]

execute if score music_boss trueEnding_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The music that plays during the Ender Dragon fight"}]}},{"translate":"Boss Music: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_boss_0"}}]
execute if score music_boss trueEnding_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The music that plays during the Ender Dragon fight"}]}},{"translate":"Boss Music: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_boss_1"}}]

tellraw @s [{"translate": " "}]

execute if score music_defeat trueEnding_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The music that plays upon defeating the Ender Dragon"}]}},{"translate":"Defeat Music: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_defeat_0"}}]
execute if score music_defeat trueEnding_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The music that plays upon defeating the Ender Dragon"}]}},{"translate":"Defeat Music: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_defeat_1"}}]


tellraw @s [{"translate": " "}]

execute if data storage true_ending:storage {settings:{dragon_music_slider:"music"}} run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The sound option slider that the True Ending ender dragon boss music is tied to."}]}},{"translate":"Boss Music Sound Slider: ","color":"gray"},{"translate":"Music","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_slider_1"}}]
execute if data storage true_ending:storage {settings:{dragon_music_slider:"record"}} run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The sound option slider that the True Ending ender dragon boss music is tied to."}]}},{"translate":"Boss Music Sound Slider: ","color":"gray"},{"translate":"Record","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_slider_2"}},{"translate":" (Jukebox/Note blocks)"}]
execute if data storage true_ending:storage {settings:{dragon_music_slider:"master"}} run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The sound option slider that the True Ending ender dragon boss music is tied to."}]}},{"translate":"Boss Music Sound Slider: ","color":"gray"},{"translate":"Master","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/music_slider_3"}}]


tellraw @s [{"translate": " "}]




tellraw @s [{"translate": "","color": "yellow"},{"translate":"<-- Page 1","hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:settings/1"}},{"translate":"         - 2/4 -        ","color": "gray","italic": false},{"translate":"Page 3 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:settings/3"}}]

tellraw @s [{"translate": " "}]
