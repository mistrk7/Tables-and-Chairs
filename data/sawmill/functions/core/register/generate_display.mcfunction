#> sawmill:core/register/generate_display

# Copy output item to display item
data modify storage sawmill:data recipes[-1].display set from storage sawmill:data recipes[-1].output
execute store result score #produces tac.temp run data get storage sawmill:data recipes[-1].display.Count

# Resolve name and lore
#summon item 0 0 0 {UUID:[I; 0, 0, 0, 7], Item:{id:"minecraft:stone",Count:1b}}
#data modify entity 0-0-0-0-7 Item set from storage sawmill:data recipes[-1].display

setblock 1 0 0 oak_sign{Text2:'[{"text":"Cost: ","italic":false,"color":"gray"},{"text":"x", "color":"white"},{"score":{"name":"#material_cost","objective":"tac.io"},"color":"white","italic":false}]', Text3:'[{"text":"Produces: ","italic":false,"color":"gray"},{"text":"x", "color":"white"},{"score":{"name":"#produces","objective":"tac.temp"},"color":"white","italic":false}]'}
#setblock 1 0 0 oak_sign{Text1:'{"selector":"0-0-0-0-7","color":"yellow","italic":false,"underlined":true}', Text2:'[{"text":"Cost: ","italic":false,"color":"gray"},{"text":"x", "color":"white"},{"score":{"name":"#material_cost","objective":"tac.io"},"color":"white","italic":false}]', Text3:'[{"text":"Produces: ","italic":false,"color":"gray"},{"text":"x", "color":"white"},{"score":{"name":"#produces","objective":"tac.temp"},"color":"white","italic":false}]'}
#data modify storage sawmill:data recipes[-1].display.tag.display.Name set from block 1 0 0 Text1
data modify storage sawmill:data recipes[-1].display.tag.display.Lore append from block 1 0 0 Text2
data modify storage sawmill:data recipes[-1].display.tag.display.Lore append from block 1 0 0 Text3

# Reset sign
setblock 1 0 0 air
#kill 0-0-0-0-7