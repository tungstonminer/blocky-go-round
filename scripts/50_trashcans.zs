////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var bucket = <item:minecraft:bucket>;
var chest = <item:minecraft:chest>;
var energyTrashCan = <item:trashcans:energy_trash_can>;
var fluidTrashCan = <item:trashcans:liquid_trash_can>;
var itemTrashCan = <item:trashcans:item_trash_can>;
var redstone = <item:minecraft:redstone>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Energy Trash Can
craftingTable.remove(energyTrashCan);
craftingTable.addShaped("energy_trash_can", energyTrashCan, [
    [ aluminumIngot, _, aluminumIngot ],
    [ aluminumIngot, redstone, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Fluid Trash Can
craftingTable.remove(fluidTrashCan);
craftingTable.addShaped("fluid_trash_can", fluidTrashCan, [
    [ aluminumIngot, _, aluminumIngot ],
    [ aluminumIngot, bucket, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Item Trash Can
craftingTable.remove(itemTrashCan);
craftingTable.addShaped("item_trash_can", itemTrashCan, [
    [ aluminumIngot, _, aluminumIngot ],
    [ aluminumIngot, chest, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);
