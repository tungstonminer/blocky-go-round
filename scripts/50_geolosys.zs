////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var ancientDebris = <item:minecraft:ancient_debris> | <item:geolosys:ancient_debris_ore>;
var cobbledDeepslate = <item:minecraft:cobbled_deepslate>;
var cobblestone = <item:minecraft:cobblestone>;
var deepslateDiamondOre = <item:minecraft:deepslate_diamond_ore> | <item:geolosys:deepslate_kimberlite_ore>;
var deepslateEmeraldOre = <item:minecraft:deepslate_emerald_ore> | <item:geolosys:deepslate_beryl_ore>;
var deepslateQuartzOre = <item:geolosys:deepslate_quartz_ore>;
var diamond = <item:minecraft:diamond>;
var diamondOre = <item:minecraft:diamond_ore> | <item:geolosys:kimberlite_ore>;
var emerald = <item:minecraft:emerald>;
var emeraldOre = <item:minecraft:emerald_ore> | <item:geolosys:beryl_ore>;
var goldIngot = <item:minecraft:gold_ingot>;
var goldNugget = <item:minecraft:gold_nugget>;
var leadIngot = <item:geolosys:lead_ingot>;
var netherGoldOre = <item:minecraft:nether_gold_ore> | <item:geolosys:nether_gold_ore>;
var netheriteScrap = <item:minecraft:netherite_scrap>;
var netherrack = <item:minecraft:netherrack>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var prospectorsPick = <item:geolosys:prospectors_pick>;
var quartz = <item:minecraft:quartz>;
var quartzOre = <item:geolosys:quartz_ore>;
var stick = <item:minecraft:stick>;
var xp = <item:create:experience_nugget>;

var crusher = <recipetype:create:crushing>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Ancient Debris
blastFurnace.removeByInput(ancientDebris.items[0]);
blastFurnace.addRecipe("blast_ancient_debris", netheriteScrap, ancientDebris, 2.0, 200);
furnace.removeByInput(ancientDebris.items[0]);
furnace.addRecipe("smelt_ancient_debris", netheriteScrap, ancientDebris, 2.0, 400);

// Deepslate Diamond Ore
blastFurnace.removeByInput(deepslateDiamondOre.items[0]);
blastFurnace.addRecipe("blast_deepslate_diamond_ore", diamond, deepslateDiamondOre, 1.0, 200);
furnace.removeByInput(deepslateDiamondOre.items[0]);
furnace.addRecipe("smelt_deepslate_diamond_ore", diamond, deepslateDiamondOre, 1.0, 100);
crusher.removeByInput(deepslateDiamondOre.items[0]);
crusher.addRecipe("crush_deepslate_diamond_ore", [
    diamond * 2, diamond % 25, xp % 75, cobbledDeepslate % 12.5
], deepslateDiamondOre);

// Deepslate Emerald Ore
blastFurnace.removeByInput(deepslateEmeraldOre.items[0]);
blastFurnace.addRecipe("blast_deepslate_emerald_ore", emerald, deepslateEmeraldOre, 1.0, 200);
furnace.removeByInput(deepslateEmeraldOre.items[0]);
furnace.addRecipe("smelt_deepslate_emerald_ore", emerald, deepslateEmeraldOre, 1.0, 100);
crusher.removeByInput(deepslateEmeraldOre.items[0]);
crusher.addRecipe("crush_deepslate_emerald_ore", [
    emerald * 2, emerald % 25, xp % 75, cobbledDeepslate % 12.5
], deepslateEmeraldOre);

// Deepslate Quartz Ore
blastFurnace.addRecipe("blast_deepslate_quartz_ore", quartz, deepslateQuartzOre, 1.0, 200);
furnace.addRecipe("smelt_deepslate_quartz_ore", quartz, deepslateQuartzOre, 1.0, 100);
crusher.addRecipe("crush_deepslate_quartz_ore", [
    quartz * 2, quartz % 25, xp % 75, cobbledDeepslate % 12.5
], deepslateQuartzOre);

// Diamond Ore
blastFurnace.removeByInput(diamondOre.items[0]);
blastFurnace.addRecipe("blast_diamond_ore", diamond, diamondOre, 1.0, 200);
furnace.removeByInput(diamondOre.items[0]);
furnace.addRecipe("smelt_diamond_ore", diamond, diamondOre, 1.0, 100);
crusher.removeByInput(diamondOre.items[0]);
crusher.addRecipe("crush_diamond_ore", [
    diamond, diamond % 75, xp % 75, cobblestone % 12.5
], diamondOre);

// Emerald Ore
blastFurnace.removeByInput(emeraldOre.items[0]);
blastFurnace.addRecipe("blast_emerald_ore", emerald, emeraldOre, 1.0, 200);
furnace.removeByInput(emeraldOre.items[0]);
furnace.addRecipe("smelt_emerald_ore", emerald, emeraldOre, 1.0, 100);
crusher.removeByInput(emeraldOre.items[0]);
crusher.addRecipe("crush_emerald_ore", [
    emerald, emerald % 75, xp % 75, cobblestone % 12.5
], emeraldOre);

// Nether Gold Ore
blastFurnace.removeByInput(netherGoldOre.items[0]);
blastFurnace.addRecipe("blast_nether_gold_ore", goldIngot, netherGoldOre, 1.0, 200);
furnace.removeByInput(netherGoldOre.items[0]);
furnace.addRecipe("smelt_nether_gold_ore", goldIngot, netherGoldOre, 1.0, 100);
crusher.removeByInput(netherGoldOre.items[0]);
crusher.addRecipe("crush_nether_gold_ore", [
    goldNugget * 7, goldNugget % 50, xp % 75, netherrack % 12.5
], netherGoldOre);

// Prospector's Pick
craftingTable.remove(prospectorsPick);
craftingTable.addShaped("prospectors_pick", prospectorsPick, [
    [ nickelIngot, leadIngot ],
    [ _, stick ],
    [ _, stick ],
]);

// Quartz Ore
blastFurnace.addRecipe("blast_quartz_ore", quartz, quartzOre, 1.0, 200);
furnace.addRecipe("smelt_quartz_ore", quartz, quartzOre, 1.0, 100);
crusher.addRecipe("crush_quartz_ore", [
    quartz, quartz % 75, xp % 75, cobblestone % 12.5
], quartzOre);
