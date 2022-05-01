import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.util.random.Percentaged;
import mods.jei.JEI;

////////////////////////////////////////////////////////////////////////////////////////////////////

function processOre(
    name as string,
    stoneOre as IIngredient,
    deepOre as IIngredient,
    raw as IIngredient,
    rawBlock as IItemStack,
    crushed as IItemStack,
    ingot as IItemStack,
    nugget as IIngredient,
    residue as Percentaged<IItemStack>,
    crushCount as int,
    crushPercent as float,
    deepCrushCount as int,
    deepCrushPercent as float
) as void {
    var crusher = <recipetype:create:crushing>;
    var splasher = <recipetype:create:splashing>;

    var deepCobble = <item:minecraft:cobbled_deepslate>;
    var stoneCobble = <item:minecraft:cobblestone>;
    var xp = <item:create:experience_nugget>;

    // Process stone ore
    for itemStack in stoneOre.items {
        blastFurnace.removeByInput(itemStack);
        furnace.removeByInput(itemStack);
        crusher.removeByInput(itemStack);
    }
    blastFurnace.addRecipe("blast_stone_ore_" + name, ingot, stoneOre, 0.75, 100);
    crusher.addRecipe("crush_stone_ore_" + name, [
        crushed * crushCount, crushed % crushPercent, xp % 75, stoneCobble % 12
    ], stoneOre);
    furnace.addRecipe("smelt_stone_ore_" + name, ingot, stoneOre, 0.75, 200);

    // Process deepslate ore
    for itemStack in deepOre.items {
        blastFurnace.removeByInput(itemStack);
        furnace.removeByInput(itemStack);
        crusher.removeByInput(itemStack);
    }
    blastFurnace.addRecipe("blast_deep_ore_" + name, ingot, deepOre, 0.75, 100);
    crusher.addRecipe("crushed_deep_ore_" + name, [
        crushed * deepCrushCount, crushed % deepCrushPercent, xp % 75, deepCobble % 12
    ], deepOre);
    furnace.addRecipe("smelt_deep_ore_" + name, ingot, deepOre, 0.75, 200);

    // Process raw metal chunks
    for itemStack in raw.items {
        blastFurnace.removeByInput(itemStack);
        crusher.removeByInput(itemStack);
        furnace.removeByInput(itemStack);
    }
    blastFurnace.addRecipe("blast_raw_" + name, ingot, raw, 0.75, 100);
    if (rawBlock != <item:minecraft:air>) {
        craftingTable.remove(rawBlock);
        craftingTable.addShaped("pack_raw_" + name, rawBlock, [
            [raw, raw, raw], [raw, raw, raw], [raw, raw, raw],
        ]);
    }
    crusher.addRecipe("crush_raw_" + name, [crushed, xp % 75], raw);
    furnace.addRecipe("smelt_raw_" + name, ingot, raw, 0.75, 200);

    // Process crushed metal
    blastFurnace.removeByInput(crushed);
    blastFurnace.addRecipe("blast_crushed_" + name, ingot, crushed, 0.75, 100);
    furnace.removeByInput(crushed);
    furnace.addRecipe("smelt_crushed_" + name, ingot, crushed, 0.75, 200);
    splasher.removeByInput(crushed);
    splasher.addRecipe("splash_crushed_" + name, [nugget.items[0] * 9, residue], crushed);

    // Process nuggets
    for itemStack in nugget.items {
        craftingTable.remove(itemStack);
    }
    craftingTable.addShapeless("nugget_from_ingot_" + name, nugget.items[0] * 9, [ ingot ]);
    craftingTable.addShaped("ingot_from_nugget_" + name, ingot, [
        [nugget, nugget, nugget], [nugget, nugget, nugget], [nugget, nugget, nugget]
    ]);
}

function processMixedOre(
    name as string,
    stoneOre as IIngredient,
    deepOre as IIngredient,
    primaryCrushed as IItemStack,
    secondaryCrushed as IItemStack,
    primaryPercent as float,
    primaryIngot as IItemStack
) as void {
    var crusher = <recipetype:create:crushing>;
    var deepCobble = <item:minecraft:cobbled_deepslate>;
    var secondaryPercent = 100 - primaryPercent;
    var stoneCobble = <item:minecraft:cobblestone>;
    var xp = <item:create:experience_nugget>;

    // Process stone ore
    for itemStack in stoneOre.items {
        crusher.removeByInput(itemStack);
    }
    crusher.addRecipe("crush_stone_ore_" + name, [
        primaryCrushed % primaryPercent,
        primaryCrushed % (primaryPercent * 0.75),
        secondaryCrushed % secondaryPercent,
        secondaryCrushed % (secondaryPercent * 0.75),
        xp % 75,
        stoneCobble % 12
    ], stoneOre);
    blastFurnace.addRecipe("blast_ore_" + name, primaryIngot, stoneOre, 0.75, 100);
    furnace.addRecipe("smelt_ore_" + name, primaryIngot, stoneOre, 0.75, 200);

    // Process deepslate ore
    for itemStack in deepOre.items {
        crusher.removeByInput(itemStack);
    }
    crusher.addRecipe("crushed_deep_ore_" + name, [
        (primaryCrushed * 2) % primaryPercent,
        primaryCrushed % (primaryPercent * 0.25),
        (secondaryCrushed * 2) % secondaryPercent,
        secondaryCrushed % (secondaryPercent * 0.25),
        xp % 75,
        stoneCobble % 12
    ], deepOre);
    blastFurnace.addRecipe("blast_deep_ore_" + name, primaryIngot, deepOre, 0.75, 100);
    furnace.addRecipe("smelt_deep_ore_" + name, primaryIngot, deepOre, 0.75, 200);
}

////////////////////////////////////////////////////////////////////////////////////////////////////

processOre(
    "aluminum",
    <item:geolosys:bauxite_ore>,
    <item:geolosys:deepslate_bauxite_ore>,
    <item:geolosys:aluminum_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_aluminum_ore>,
    <item:geolosys:aluminum_ingot>,
    <item:geolosys:aluminum_nugget>,
    <item:create:rose_quartz> % 25,
    1, 75,
    2, 25
);

processOre(
    "copper",
    <item:minecraft:copper_ore> | <item:geolosys:azurite_ore> | <item:geolosys:malachite_ore>,
    <item:minecraft:deepslate_copper_ore> | <item:geolosys:deepslate_azurite_ore> | <item:geolosys:deepslate_malachite_ore>,
    <item:minecraft:raw_copper> | <item:geolosys:copper_cluster>,
    <item:minecraft:raw_copper_block>,
    <item:create:crushed_copper_ore>,
    <item:minecraft:copper_ingot>,
    <item:create:copper_nugget> | <item:geolosys:copper_nugget>,
    <item:minecraft:redstone> % 12.5,
    5, 75,
    7, 25
);

processOre(
    "gold",
    <item:minecraft:gold_ore> | <item:geolosys:gold_ore>,
    <item:minecraft:deepslate_gold_ore> | <item:geolosys:deepslate_gold_ore>,
    <item:minecraft:raw_gold> | <item:geolosys:gold_cluster>,
    <item:minecraft:raw_gold_block>,
    <item:create:crushed_gold_ore>,
    <item:minecraft:gold_ingot>,
    <item:minecraft:gold_nugget>,
    <item:minecraft:quartz> % 50,
    1, 75,
    2, 25
);

processOre(
    "iron",
    <item:minecraft:iron_ore> | <item:geolosys:hematite_ore>,
    <item:minecraft:deepslate_iron_ore> | <item:geolosys:deepslate_hematite_ore>,
    <item:minecraft:raw_iron> | <item:geolosys:iron_cluster>,
    <item:minecraft:raw_iron_block>,
    <item:create:crushed_iron_ore>,
    <item:minecraft:iron_ingot>,
    <item:minecraft:iron_nugget>,
    <item:geolosys:nickel_nugget> % 25,
    1, 75,
    2, 25
);

processOre(
    "lead",
    <item:geolosys:galena_ore>,
    <item:geolosys:deepslate_galena_ore>,
    <item:geolosys:lead_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_lead_ore>,
    <item:geolosys:lead_ingot>,
    <item:geolosys:lead_nugget>,
    <item:geolosys:silver_nugget> % 25,
    1, 75,
    2, 25
);

processOre(
    "nickel",
    <item:geolosys:limonite_ore>,
    <item:geolosys:deepslate_limonite_ore>,
    <item:geolosys:nickel_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_nickel_ore>,
    <item:geolosys:nickel_ingot>,
    <item:geolosys:nickel_nugget>,
    <item:minecraft:iron_nugget> % 25,
    1, 75,
    2, 25
);

processOre(
    "platinum",
    <item:geolosys:platinum_ore>,
    <item:geolosys:deepslate_platinum_ore>,
    <item:geolosys:platinum_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_platinum_ore>,
    <item:geolosys:platinum_ingot>,
    <item:geolosys:platinum_nugget>,
    <item:minecraft:amethyst_shard> % 50,
    1, 75,
    2, 25
);

processOre(
    "silver",
    <item:geolosys:galena_ore>,
    <item:geolosys:deepslate_galena_ore>,
    <item:geolosys:silver_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_silver_ore>,
    <item:geolosys:silver_ingot>,
    <item:geolosys:silver_nugget>,
    <item:geolosys:lead_nugget> % 25,
    1, 75,
    2, 25
);

processOre(
    "tin",
    <item:geolosys:cassiterite_ore> | <item:geolosys:teallite_ore>,
    <item:geolosys:deepslate_cassiterite_ore> | <item:geolosys:deepslate_teallite_ore>,
    <item:geolosys:tin_cluster>,
    <item:minecraft:air>,
    <item:create:crushed_tin_ore>,
    <item:geolosys:tin_ingot>,
    <item:geolosys:tin_nugget>,
    <item:minecraft:emerald> % 5,
    1, 75,
    2, 25
);

processOre(
    "zinc",
    <item:create:zinc_ore> | <item:geolosys:sphalerite_ore>,
    <item:create:deepslate_zinc_ore> | <item:geolosys:deepslate_sphalerite_ore>,
    <item:create:raw_zinc> | <item:geolosys:zinc_cluster>,
    <item:create:raw_zinc_block>,
    <item:create:crushed_zinc_ore>,
    <item:create:zinc_ingot>,
    <item:create:zinc_nugget> | <item:geolosys:zinc_nugget>,
    <item:minecraft:gunpowder> % 25,
    1, 75,
    2, 25
);

////////////////////////////////////////////////////////////////////////////////////////////////////

processMixedOre(
    "galena",
    <item:geolosys:galena_ore>,
    <item:geolosys:deepslate_galena_ore>,
    <item:create:crushed_lead_ore>,
    <item:create:crushed_silver_ore>,
    50,
    <item:geolosys:lead_ingot>
);

processMixedOre(
    "limonite",
    <item:geolosys:limonite_ore>,
    <item:geolosys:deepslate_limonite_ore>,
    <item:create:crushed_nickel_ore>,
    <item:create:crushed_iron_ore>,
    75,
    <item:geolosys:nickel_ingot>
);

////////////////////////////////////////////////////////////////////////////////////////////////////

var REMOVE_LIST = [
    <item:create:crushed_osmium_ore>,
    <item:create:crushed_uranium_ore>,
    <item:geolosys:copper_nugget>,
    <item:geolosys:osmium_cluster>,
    <item:geolosys:uranium_cluster>,
    <item:geolosys:zinc_ingot>,
    <item:geolosys:zinc_nugget>,
] as IItemStack[];

for itemStack in REMOVE_LIST {
    craftingTable.remove(itemStack);
    craftingTable.removeByInput(itemStack);
    JEI.hideIngredient(itemStack);
}
