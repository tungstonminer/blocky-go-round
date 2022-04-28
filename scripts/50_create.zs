////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var andesiteAlloy = <item:create:andesite_alloy>;
var andesiteCasing = <item:create:andesite_casing>;
var belt = <item:create:belt_connector>;
var brassCasing = <item:create:brass_casing>;
var comparator = <item:minecraft:comparator>;
var contentObserver = <item:create:content_observer>;
var framedGlass = <item:create:framed_glass>;
var horizontalFramedGlass = <item:create:horizontal_framed_glass>;
var leather = <item:minecraft:leather>;
var mechanicalDrill = <item:create:mechanical_drill>;
var metalFramedGlass = <item:valhelsia_structures:metal_framed_glass>;
var observer = <item:minecraft:observer>;
var redstone = <item:minecraft:redstone>;
var silverIngot = <item:geolosys:silver_ingot>;
var steelIngot = <item:alloyed:steel_ingot>;
var stockpileSwitch = <item:create:stockpile_switch>;
var tiledGlass = <item:create:tiled_glass>;
var verticalFramedGlass = <item:create:vertical_framed_glass>;

////////////////////////////////////////////////////////////////////////////////////////////////////

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

// Stockpile Switch
craftingTable.remove(stockpileSwitch);
craftingTable.addShaped("stockpile_switch", stockpileSwitch, [
    [ redstone, comparator, silverIngot ],
    [ _, brassCasing, _ ],
]);
