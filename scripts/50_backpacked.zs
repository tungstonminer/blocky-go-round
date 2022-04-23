////////////////////////////////////////////////////////////////////////////////////////////////////

var backpack = <item:backpacked:backpack>;
var ironIngot = <item:minecraft:iron_ingot>;
var leather = <item:minecraft:leather>;
var stringItem = <item:minecraft:string>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Backpack -- change to use regular leather
craftingTable.remove(backpack);
craftingTable.addShaped("backpack_from_leather", backpack, [
    [ leather, leather, leather ],
    [ stringItem, ironIngot, stringItem ],
    [ leather, leather, leather ],
]);
