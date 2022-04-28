////////////////////////////////////////////////////////////////////////////////////////////////////

var backpack = <item:backpacked:backpack>;
var brassIngot = <item:create:brass_ingot>;
var ironIngot = <item:minecraft:iron_ingot>;
var leather = <item:minecraft:leather>;
var silverIngot = <item:geolosys:silver_ingot>;
var stringItem = <item:minecraft:string>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Backpack -- change to use regular leather and allow more metal buckels
var buckelIngot = brassIngot | ironIngot | silverIngot;
craftingTable.remove(backpack);
craftingTable.addShaped("backpack_from_leather", backpack, [
    [ leather, leather, leather ],
    [ stringItem, buckelIngot, stringItem ],
    [ leather, leather, leather ],
]);
