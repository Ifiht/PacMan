playsound block.end_portal_frame.fill block @a[distance=..32] ~ ~ ~ 1.5 1
advancement revoke @s only true_ending:place_end_crystal_on_bedrock
execute anchored eyes run function true_ending:respawning/place_end_crystal_raycast