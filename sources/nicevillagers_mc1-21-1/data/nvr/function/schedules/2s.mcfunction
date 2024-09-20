function nvr:names/run
function nvr:mood/run
function nvr:village_names/run
function nvr:master_trades/run
function nvr:wandering_trader/run
function nvr:villager_outpost/run

execute as @e[type=block_display,tag=job_site] at @s unless entity @e[type=area_effect_cloud,distance=..0.1] run kill @s

schedule function nvr:schedules/2s 2s