
tellraw @s [{"translate": " "}]



execute if score dragontrail trueEnding_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The particle trail of the Ender Dragon"}]}},{"translate":"Dragon Trail: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/dragontrail_0"}}]
execute if score dragontrail trueEnding_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"The particle trail of the Ender Dragon"}]}},{"translate":"Dragon Trail: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:action/dragontrail_1"}}]

tellraw @s [{"translate": " "}]


tellraw @s [{"translate": " "}]


tellraw @s [{"translate": " "}]



tellraw @s [{"translate": " "}]



tellraw @s [{"translate": " "}]



tellraw @s [{"translate": "","color": "yellow"},{"translate":"<-- Page 3","hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function true_ending:settings/3"}},{"translate":"         - 4/4 -        ","color": "gray","italic": false}]

tellraw @s [{"translate": " "}]
