////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var ancientDebris = <item:minecraft:ancient_debris> | <item:geolosys:ancient_debris_ore>;
var goldIngot = <item:minecraft:gold_ingot>;
var goldNugget = <item:minecraft:gold_nugget>;
var leadIngot = <item:geolosys:lead_ingot>;
var netherGoldOre = <item:minecraft:nether_gold_ore> | <item:geolosys:nether_gold_ore>;
var netheriteScrap = <item:minecraft:netherite_scrap>;
var netherrack = <item:minecraft:netherrack>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var prospectorsPick = <item:geolosys:prospectors_pick>;
var stick = <item:minecraft:stick>;
var xp = <item:create:experience_nugget>;

var crusher = <recipetype:create:crushing>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Ancient Debris
blastFurnace.removeByInput(ancientDebris.items[0]);
blastFurnace.addRecipe("blast_ancient_debris", netheriteScrap, ancientDebris, 2.0, 200);
furnace.removeByInput(ancientDebris.items[0]);
furnace.addRecipe("smelt_ancient_debris", netheriteScrap, ancientDebris, 2.0, 400);

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
