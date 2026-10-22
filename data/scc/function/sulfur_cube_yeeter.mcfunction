#   This should allow them to self-tag. We check for cubes missing both tags and they mark themselves for checking:
execute as @e[type=minecraft:sulfur_cube,tag=!safe,tag=!check] run tag @s add check

#   Then, we want to only allow the ones tagged with "check" and not "safe" to run the commands to check below themselves.
#   This first one lets the unsafe ones check if they are safe, and then marks themselves safe from being yeeted.
execute as @e[type=minecraft:sulfur_cube,tag=check,tag=!safe] at @s if block ~ ~-1 ~ #scc:sulfur_cube_spawnable run tag @s add safe


#   Okay, let's try tagging the eggs and buckets beforehand? Maybe this time will be consistent.
execute as @p[nbt={SelectedItem:{id:"minecraft:sulfur_cube_spawn_egg",count:1}}] run item modify entity @s weapon.mainhand scc:eggs_fix

#   Same for the buckets
execute as @p[nbt={SelectedItem:{id:"minecraft:sulfur_cube_bucket",count:1}}] run item modify entity @s weapon.mainhand scc:eggs_fix

#   And now, any that haven't been tagged as safe (while also checking the conditions are still not met for the block tag) get the Yeeter 5000.
execute as @e[type=minecraft:sulfur_cube,tag=check,tag=!safe] at @s unless block ~ ~-1 ~ #scc:sulfur_cube_spawnable run tp @s ~ ~-1000 ~
