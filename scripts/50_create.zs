////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var andesite = <item:minecraft:andesite>;
var andesiteAlloy = <item:create:andesite_alloy>;
var andesiteCasing = <item:create:andesite_casing>;
var anyWool = <tag:items:minecraft:wool>;
var anyZincNugget = <tag:items:forge:nuggets/zinc>;
var backpack = <item:backpacked:backpack>;
var belt = <item:create:belt_connector>;
var brassCasing = <item:create:brass_casing>;
var comparator = <item:minecraft:comparator>;
var contentObserver = <item:create:content_observer>;
var copperBacktank = <item:create:copper_backtank>;
var copperIngot = <item:minecraft:copper_ingot>;
var copperSheet = <item:create:copper_sheet>;
var divingBoots = <item:create:diving_boots>;
var electronTube = <item:create:electron_tube>;
var filter = <item:create:filter>;
var fluidPipe = <item:create:fluid_pipe>;
var framedGlass = <item:create:framed_glass>;
var glass = <item:minecraft:glass>;
var goldSheet = <item:create:golden_sheet>;
var horizontalFramedGlass = <item:create:horizontal_framed_glass>;
var ironSheet = <item:create:iron_sheet>;
var leadIngot = <item:geolosys:lead_ingot>;
var leadNugget = <item:geolosys:lead_nugget>;
var leather = <item:minecraft:leather>;
var mechanicalDrill = <item:create:mechanical_drill>;
var mechanicalHarvester = <item:create:mechanical_harvester>;
var mechanicalPlough = <item:create:mechanical_plough>;
var metalFramedGlass = <item:valhelsia_structures:metal_framed_glass>;
var ornateWindow = <item:create:ornate_iron_window>;
var nozzle = <item:create:nozzle>;
var observer = <item:minecraft:observer>;
var polishedRoseQuartz = <item:create:polished_rose_quartz>;
var pressurizedGasContainer = <item:steampowered:pressurized_gas_container>;
var propeller = <item:create:propeller>;
var pulseRepeater = <item:create:pulse_repeater>;
var redstone = <item:minecraft:redstone>;
var redstoneTorch = <item:minecraft:redstone_torch>;
var silicon = <item:tinyredstone:silicon>;
var silverIngot = <item:geolosys:silver_ingot>;
var silverNugget = <item:geolosys:silver_nugget>;
var slimeBall = <item:minecraft:slime_ball>;
var steelIngot = <item:alloyed:steel_ingot>;
var stockpileSwitch = <item:create:stockpile_switch>;
var stringItem = <item:minecraft:string>;
var superGlue = <item:create:super_glue>;
var tiledGlass = <item:create:tiled_glass>;
var tinIngot = <item:geolosys:tin_ingot>;
var tinNugget = <item:geolosys:tin_nugget>;
var verticalFramedGlass = <item:create:vertical_framed_glass>;

var mixer = <recipetype:create:mixing>;
var mirrorAll = <constant:minecraft:mirroraxis:all>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Andesite Alloy
craftingTable.remove(andesiteAlloy);
craftingTable.addShapedMirrored("andesite_alloy", mirrorAll, andesiteAlloy, [
    [ andesite, anyZincNugget ],
    [ anyZincNugget, andesite ]
]);
mixer.removeByName("create:mixing/andesite_alloy");

// Copper Backtank
craftingTable.remove(copperBacktank);
craftingTable.addShapeless("copper_backtank", copperBacktank, [
    backpack, pressurizedGasContainer
]);

// Belt -- allow using leather
craftingTable.addShaped("belt_from_leather", belt, [
    [ leather, leather, leather ]
]);

// Content Observer
craftingTable.remove(contentObserver);
craftingTable.addShaped("content_observer", contentObserver, [
    [ redstone, observer, silverIngot ],
    [ _, brassCasing, _ ],
]);

// Diving Boots
craftingTable.remove(divingBoots);
craftingTable.addShaped("diving_boots", divingBoots, [
    [ copperIngot, _, copperIngot ],
    [ leadIngot, _, leadIngot ],
]);

// Electron Tube
craftingTable.remove(electronTube);
craftingTable.addShaped("electron_tube", electronTube, [
    [ polishedRoseQuartz ],
    [ redstoneTorch ],
    [ silverNugget ],
]);

// Filter
craftingTable.remove(filter);
craftingTable.addShaped("filter", filter, [
    [ tinNugget, anyWool, tinNugget ],
]);

// Fluid Pipe
craftingTable.remove(fluidPipe);
craftingTable.addShaped("fluid_pipe", fluidPipe * 4, [
    [ copperSheet, leadIngot, copperSheet ],
]);

// Framed Glass
stoneCutter.remove(framedGlass);
stoneCutter.remove(horizontalFramedGlass);
stoneCutter.remove(tiledGlass);
stoneCutter.remove(verticalFramedGlass);
stoneCutter.addRecipe("framed_glass", framedGlass, metalFramedGlass);
stoneCutter.addRecipe("horizontal_framed_glass", horizontalFramedGlass, metalFramedGlass);
stoneCutter.addRecipe("tiled_glass", tiledGlass, metalFramedGlass);
stoneCutter.addRecipe("vertical_framed_glass", verticalFramedGlass, metalFramedGlass);

// Mechanical Drill
craftingTable.remove(mechanicalDrill);
craftingTable.addShaped("mechanical_drill", mechanicalDrill, [
    [ _, steelIngot, _ ],
    [ steelIngot, andesiteAlloy, steelIngot ],
    [ _, andesiteCasing, _ ],
]);

// Mechanical Harvester
craftingTable.remove(mechanicalHarvester);
craftingTable.addShaped("mechanical_harvester", mechanicalHarvester, [
    [ aluminumIngot, ironSheet, aluminumIngot ],
    [ aluminumIngot, ironSheet, aluminumIngot ],
    [ _, andesiteCasing, _ ],
]);

// Mechanical Plough
craftingTable.remove(mechanicalPlough);
craftingTable.addShaped("mechanical_plough", mechanicalPlough, [
    [ steelIngot, steelIngot, steelIngot ],
    [ andesiteAlloy, leadIngot, andesiteAlloy ],
    [ _, andesiteCasing, _ ],
]);

// Nozzle
craftingTable.remove(nozzle);
craftingTable.addShaped("nozzle", nozzle, [
    [ _, tinIngot, _ ],
    [ _, anyWool, _ ],
    [ tinIngot, tinIngot, tinIngot ],
]);

// Ornate Window
craftingTable.remove(ornateWindow);
craftingTable.addShaped("ornate_window", ornateWindow * 4, [
    [ leadNugget, glass, leadNugget ],
    [ glass, leadNugget, glass ],
    [ leadNugget, glass, leadNugget ],
]);

// Propeller
craftingTable.remove(propeller);
craftingTable.addShaped("propeller", propeller, [
    [ _, aluminumIngot, _ ],
    [ aluminumIngot, andesiteAlloy, aluminumIngot ],
    [ _, aluminumIngot, _ ],
]);

// Pulse Repeater
craftingTable.remove(pulseRepeater);
craftingTable.addShaped("pulse_repeater", pulseRepeater, [
    [ redstone, goldSheet, redstoneTorch ],
    [ silicon, silicon, silicon ],
]);

// Stockpile Switch
craftingTable.remove(stockpileSwitch);
craftingTable.addShaped("stockpile_switch", stockpileSwitch, [
    [ redstone, comparator, silverIngot ],
    [ _, brassCasing, _ ],
]);

// Super Glue
craftingTable.remove(superGlue);
craftingTable.addShaped("super_glue", superGlue, [
    [ slimeBall, tinIngot ],
    [ tinNugget, slimeBall ],
]);
