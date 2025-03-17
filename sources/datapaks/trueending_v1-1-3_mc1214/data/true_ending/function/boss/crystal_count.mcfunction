
#subtracts to find the difference between the crystals in the last tick and current tick
#this is to detect that a crystal has been destroyed
execute store result score crystals_left trueEnding_storage if entity @e[distance=..128,type=end_crystal,nbt={ShowBottom:1b}]
scoreboard players operation crystals_left_pretick trueEnding_storage -= crystals_left trueEnding_storage



execute if score crystals_left_pretick trueEnding_storage matches 1.. positioned 0 65 0 run title @a[distance=..128] actionbar [{"score":{"objective":"trueEnding_storage","name":"crystals_left"}},{"text":" End Crystals left"}]
execute if score crystals_left trueEnding_storage matches 0 if score crystals_left_pretick trueEnding_storage matches 1.. positioned 0 65 0 run title @a[distance=..128] actionbar [{"text":"All End Crystals destroyed!","color": "light_purple"}]

#updates the previous tick check
execute store result score crystals_left_pretick trueEnding_storage run scoreboard players get crystals_left trueEnding_storage