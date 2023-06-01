execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:damaged_anvil"}}] at @s if block ~ ~-1 ~ minecraft:coal_ore if block ~-1 ~-1 ~-1 lava if block ~-1 ~-1 ~ lava if block ~-1 ~-1 ~1 lava if block ~ ~-1 ~-1 lava if block ~ ~-1 ~1 lava if block ~1 ~-1 ~-1 lava if block ~1 ~-1 ~ lava if block ~1 ~-1 ~1 lava run scoreboard players operation @s anvils = .global anvils
scoreboard players add .global anvils 1
execute as @e if score @s anvils >= .one anvils at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e if score @s anvils >= .one anvils at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air
execute as @e if score @s anvils >= .one anvils at @s run playsound minecraft:block.anvil.destroy block @a[distance=..16]
execute as @e if score @s anvils >= .one anvils run kill @s
# i think this only works because this all happens in the same tick
execute as @e if score @s anvils >= .one anvils run scoreboard players reset @s anvils