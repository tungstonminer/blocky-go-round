////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var cobbledDeepslate = <item:minecraft:cobbled_deepslate>;
var cobblestone = <item:minecraft:cobblestone>;
var deepslateQuartzOre = <item:geolosys:deepslate_quartz_ore>;
var diamond = <item:minecraft:diamond>;
var emerald = <item:minecraft:emerald>;
var goldIngot = <item:minecraft:gold_ingot>;
var goldNugget = <item:minecraft:gold_nugget>;
var leadIngot = <item:geolosys:lead_ingot>;
var netheriteScrap = <item:minecraft:netherite_scrap>;
var netherrack = <item:minecraft:netherrack>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var prospectorsPick = <item:geolosys:prospectors_pick>;
var quartz = <item:minecraft:quartz>;
var quartzOre = <item:geolosys:quartz_ore>;
var stick = <item:minecraft:stick>;
var xp = <item:create:experience_nugget>;

var crusher = <recipetype:create:crushing>;

var anyAncientDebris = <tag:items:blockygoround:ancient_debris>;
var anyDeepDiamondOre = <tag:items:blockygoround:deep_diamond_ore>;
var anyDeepEmeraldOre = <tag:items:blockygoround:deep_emerald_ore>;
var anyDiamondOre = <tag:items:blockygoround:diamond_ore>;
var anyEmeraldOre = <tag:items:blockygoround:emerald_ore>;
var anyNetherGoldOre = <tag:items:blockygoround:nether_gold_ore>;

anyAncientDebris.add(<item:minecraft:ancient_debris>, <item:geolosys:ancient_debris_ore>);
anyDeepDiamondOre.add(<item:minecraft:deepslate_diamond_ore>, <item:geolosys:deepslate_kimberlite_ore>);
anyDeepEmeraldOre.add(<item:minecraft:deepslate_emerald_ore>, <item:geolosys:deepslate_beryl_ore>);
anyDiamondOre.add(<item:minecraft:diamond_ore>, <item:geolosys:kimberlite_ore>);
anyEmeraldOre.add(<item:minecraft:emerald_ore>, <item:geolosys:beryl_ore>);
anyNetherGoldOre.add(<item:minecraft:nether_gold_ore>, <item:geolosys:nether_gold_ore>);


////////////////////////////////////////////////////////////////////////////////////////////////////

// Ancient Debris
for element in anyAncientDebris.elements {
    blastFurnace.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_ancient_debris", netheriteScrap, anyAncientDebris, 2.0, 200);
furnace.addRecipe("smelt_ancient_debris", netheriteScrap, anyAncientDebris, 2.0, 400);

// Deepslate Diamond Ore
for element in anyDeepDiamondOre.elements {
    blastFurnace.removeByInput(element);
    crusher.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_deepslate_diamond_ore", diamond, anyDeepDiamondOre, 1.0, 200);
furnace.addRecipe("smelt_deepslate_diamond_ore", diamond, anyDeepDiamondOre, 1.0, 100);
crusher.addRecipe("crush_deepslate_diamond_ore", [
    diamond * 2, diamond % 25, xp % 75, cobbledDeepslate % 12.5
], anyDeepDiamondOre);

// Deepslate Emerald Ore
for element in anyDeepEmeraldOre.elements {
    blastFurnace.removeByInput(element);
    crusher.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_deepslate_emerald_ore", emerald, anyDeepEmeraldOre, 1.0, 200);
furnace.addRecipe("smelt_deepslate_emerald_ore", emerald, anyDeepEmeraldOre, 1.0, 100);
crusher.addRecipe("crush_deepslate_emerald_ore", [
    emerald * 2, emerald % 25, xp % 75, cobbledDeepslate % 12.5
], anyDeepEmeraldOre);

// Deepslate Quartz Ore
blastFurnace.addRecipe("blast_deepslate_quartz_ore", quartz, deepslateQuartzOre, 1.0, 200);
furnace.addRecipe("smelt_deepslate_quartz_ore", quartz, deepslateQuartzOre, 1.0, 100);
crusher.addRecipe("crush_deepslate_quartz_ore", [
    quartz * 2, quartz % 25, xp % 75, cobbledDeepslate % 12.5
], deepslateQuartzOre);

// Diamond Ore
for element in anyDiamondOre.elements {
    blastFurnace.removeByInput(element);
    crusher.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_diamond_ore", diamond, anyDiamondOre, 1.0, 200);
furnace.addRecipe("smelt_diamond_ore", diamond, anyDiamondOre, 1.0, 100);
crusher.addRecipe("crush_diamond_ore", [
    diamond, diamond % 75, xp % 75, cobblestone % 12.5
], anyDiamondOre);

// Emerald Ore
for element in anyEmeraldOre.elements {
    blastFurnace.removeByInput(element);
    crusher.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_emerald_ore", emerald, anyEmeraldOre, 1.0, 200);
furnace.addRecipe("smelt_emerald_ore", emerald, anyEmeraldOre, 1.0, 100);
crusher.addRecipe("crush_emerald_ore", [
    emerald, emerald % 75, xp % 75, cobblestone % 12.5
], anyEmeraldOre);

// Nether Gold Ore
for element in anyNetherGoldOre.elements {
    blastFurnace.removeByInput(element);
    crusher.removeByInput(element);
    furnace.removeByInput(element);
}
blastFurnace.addRecipe("blast_nether_gold_ore", goldIngot, anyNetherGoldOre, 1.0, 200);
furnace.addRecipe("smelt_nether_gold_ore", goldIngot, anyNetherGoldOre, 1.0, 100);
crusher.addRecipe("crush_nether_gold_ore", [
    goldNugget * 7, goldNugget % 50, xp % 75, netherrack % 12.5
], anyNetherGoldOre);

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
