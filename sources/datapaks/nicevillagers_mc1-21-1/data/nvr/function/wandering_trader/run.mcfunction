execute as @e[type=wandering_trader,tag=!nvr.trades.set] at @s run function nvr:wandering_trader/modify_trades
execute as @e[type=wandering_trader,tag=!nvr.trader.announced] at @s run function nvr:wandering_trader/announce with entity @s
execute as @e[type=wandering_trader,tag=!nvr.illusioner.set] at @s run function nvr:wandering_trader/set_illusioner