data modify entity @s ArmorItems[3] set value {tag:{CustomModelData:9001000},id:"minecraft:jungle_trapdoor",Count:1b}
#execute if score @p[distance=0..6,scores={chk.style=0..}] chk.style = Chair_Basic chk.style run tag @s add chk.chair.basic