## 32 Planks -> Clock
loot replace block ~ ~ ~ container.0 loot sawmill:materials/bamboo_planks
loot replace block ~ ~ ~ container.1 loot clk:clock/grand_1/bamboo
scoreboard players set #display_row tac.io 0
scoreboard players set #material_cost tac.io 40
execute unless score Tables_and_Chairs chk.installs matches 1.. run function sawmill:core/register
