# PESMP lobby generator for Minecraft Java 1.21.1
# Run once in a NEW empty world while standing near coordinates 0 64 0:
# /function pesmp:lobby
# It builds in a 65x65 area from -32..32. Back up the world first.
# This function intentionally does not clear terrain or delete blocks outside its footprint.
fill -32 63 -32 32 63 32 minecraft:polished_deepslate
fill -10 63 -10 10 63 10 minecraft:smooth_quartz
fill -8 64 -8 8 64 8 minecraft:light_gray_concrete
fill -6 64 -6 6 64 6 minecraft:polished_andesite
fill -4 64 -4 4 64 4 minecraft:quartz_block
fill -2 64 -2 2 64 2 minecraft:sea_lantern
fill -32 64 -32 32 64 -32 minecraft:deepslate_bricks
fill -32 64 32 32 64 32 minecraft:deepslate_bricks
fill -32 64 -32 -32 64 32 minecraft:deepslate_bricks
fill 32 64 -32 32 64 32 minecraft:deepslate_bricks
fill -24 64 -24 24 64 -24 minecraft:cyan_stained_glass
fill -24 64 24 24 64 24 minecraft:cyan_stained_glass
fill -24 64 -24 -24 64 24 minecraft:cyan_stained_glass
fill 24 64 -24 24 64 24 minecraft:cyan_stained_glass
# Gateway arch on the north side
fill -9 64 -27 -7 74 -27 minecraft:crying_obsidian
fill 7 64 -27 9 74 -27 minecraft:crying_obsidian
fill -9 73 -27 9 75 -27 minecraft:crying_obsidian
fill -6 65 -27 6 72 -27 minecraft:purple_stained_glass
fill -5 65 -28 5 72 -28 minecraft:air
fill -10 63 -28 10 63 -26 minecraft:polished_blackstone_bricks
fill -11 76 -28 11 76 -26 minecraft:sea_lantern
# Gateway approach
fill -4 64 -24 4 64 -11 minecraft:cyan_concrete
fill -2 65 -24 2 65 -11 minecraft:light_blue_carpet
# Side lantern columns
fill -20 64 -8 -20 68 -8 minecraft:amethyst_block
setblock -20 69 -8 minecraft:sea_lantern
fill 20 64 -8 20 68 -8 minecraft:amethyst_block
setblock 20 69 -8 minecraft:sea_lantern
# Five mode pedestals: SMP, Lifesteal, PvP, Creative, Resources
fill -19 64 10 -15 64 14 minecraft:cyan_concrete
fill -18 65 11 -16 65 13 minecraft:polished_blackstone
setblock -17 66 12 minecraft:sea_lantern
fill -11 64 10 -7 64 14 minecraft:red_concrete
fill -10 65 11 -8 65 13 minecraft:polished_blackstone
setblock -9 66 12 minecraft:sea_lantern
fill -3 64 10 1 64 14 minecraft:orange_concrete
fill -2 65 11 0 65 13 minecraft:polished_blackstone
setblock -1 66 12 minecraft:sea_lantern
fill 5 64 10 9 64 14 minecraft:purple_concrete
fill 6 65 11 8 65 13 minecraft:polished_blackstone
setblock 7 66 12 minecraft:sea_lantern
fill 13 64 10 17 64 14 minecraft:lime_concrete
fill 14 65 11 16 65 13 minecraft:polished_blackstone
setblock 15 66 12 minecraft:sea_lantern
# Pedestal guide path
fill -20 63 16 18 63 18 minecraft:stone_bricks
fill -20 64 17 18 64 17 minecraft:gray_carpet
# Community and help corner
fill 23 64 4 29 64 10 minecraft:blue_concrete
fill 24 65 5 28 67 9 minecraft:dark_oak_planks
fill 25 66 6 27 66 8 minecraft:oak_planks
setblock 26 67 7 minecraft:sea_lantern
# Parkour stepping stones (low, optional)
fill -12 63 24 -10 63 26 minecraft:purple_concrete
fill -6 64 27 -4 64 29 minecraft:purple_concrete
fill 0 65 24 2 65 26 minecraft:purple_concrete
fill 6 64 27 8 64 29 minecraft:purple_concrete
fill 12 63 24 14 63 26 minecraft:purple_concrete
# Lighting around the plaza
setblock -28 64 0 minecraft:sea_lantern
setblock 28 64 0 minecraft:sea_lantern
setblock 0 64 -29 minecraft:sea_lantern
setblock 0 64 29 minecraft:sea_lantern
setblock -28 64 -28 minecraft:sea_lantern
setblock 28 64 -28 minecraft:sea_lantern
setblock -28 64 28 minecraft:sea_lantern
setblock 28 64 28 minecraft:sea_lantern
