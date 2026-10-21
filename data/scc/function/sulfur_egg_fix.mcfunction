#Start the loop by removing the tag
advancement revoke @s only scc:sulfur_egg_fix

#Sulfur Cubes need to be at least X blocks from the player, so even with reasonable extended reach this should be fine for a solution, even if not perfect.
execute at @s run tag @e[type=minecraft:sulfur_cube,distance=..23,tag=!safe,tag=!check] add safe
