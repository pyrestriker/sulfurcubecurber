# Tag 'em, bag 'em
tag @e[type=minecraft:sulfur_cube,tag=!safe] add check

# Sort 'em, yeet the ones outta line
execute as @e[tag=check] at @s unless block ~ ~-1 ~ scc:sulfur_cube_spawnable run tp @s ~ -1000 ~

# Now, for the all-day pass wristband!
tag @e[tag=check] add safe
tag @e[tag=check] remove check
