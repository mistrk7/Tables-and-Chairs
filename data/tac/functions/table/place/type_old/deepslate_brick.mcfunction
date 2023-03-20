#Set the Table Top
data modify entity @s HandItems[0] set value {tag:{CustomModelData:9004100},id:"minecraft:jungle_trapdoor",Count:1b}

#Place the Trapdoor
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north] run setblock ~ ~ ~ oak_trapdoor[half=top,facing=north]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] run setblock ~ ~ ~ oak_trapdoor[half=top,facing=south]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east] run setblock ~ ~ ~ oak_trapdoor[half=top,facing=east]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] run setblock ~ ~ ~ oak_trapdoor[half=top,facing=west]

##CHANGE THE MODEL DATA
# Basic1
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Basic_1 chk.style run data modify entity @s ArmorItems[3] set value {tag:{CustomModelData:9004101},id:"minecraft:jungle_trapdoor",Count:1b}
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Basic_1 chk.style run tag @s add chk.table.basic.1
# Basic2
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Basic_2 chk.style run data modify entity @s ArmorItems[3] set value {tag:{CustomModelData:9004111},id:"minecraft:jungle_trapdoor",Count:1b}
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Basic_2 chk.style run tag @s add chk.table.basic.2
# Carved1
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Carved_1 chk.style run data modify entity @s ArmorItems[3] set value {tag:{CustomModelData:9004121},id:"minecraft:jungle_trapdoor",Count:1b}
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Carved_1 chk.style run tag @s add chk.table.carved.1
# Carved2
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Carved_2 chk.style run data modify entity @s ArmorItems[3] set value {tag:{CustomModelData:9004131},id:"minecraft:jungle_trapdoor",Count:1b}
execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Table_Carved_2 chk.style run tag @s add chk.table.carved.2

tag @s add chk.table.deepslate_brick
scoreboard players set @s chk.cycle 1
scoreboard players set @s chk.start_model 9004100
