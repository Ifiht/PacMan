scoreboard players set #hit in.fire_laser 1
summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;65535]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;65535]}]}}}}
data modify entity @e[type=firework_rocket,distance=..4,limit=1,sort=nearest] Owner set from entity @p[tag=in.self] UUID