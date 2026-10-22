#Start the loop by removing the tag
advancement revoke @s only scc:sulfur_egg_fix

#Sulfur Cubes need to be at least X blocks from the player, so even with reasonable extended reach this should be fine for a solution, even if not perfect.
execute at @p if items entity @s weapon.mainhand minecraft:sulfur_cube_spawn_egg run tag @e[type=minecraft:sulfur_cube,distance=..16,tag=!safe] add safe
