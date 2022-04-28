////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var anyBlackGlass = <tag:items:forge:glass/black>;
var bucket = <item:minecraft:bucket>;
var button = <item:minecraft:stone_button>;
var comparator = <item:minecraft:comparator>;
var copperConnector = <item:createaddition:connector>;
var fluidPipe = <item:create:fluid_pipe>;
var furnaceItem = <item:minecraft:furnace>;
var heatingUnit = <item:cookingforblockheads:heating_unit>;
var iceUnit = <item:cookingforblockheads:ice_unit>;
var ironTrapdoor = <item:minecraft:iron_trapdoor>;
var lavaBucket = <item:minecraft:lava_bucket>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var nickelNugget = <item:geolosys:nickel_nugget>;
var oven = <item:cookingforblockheads:oven>;
var platinumIngot = <item:geolosys:platinum_ingot>;
var preservationChamber = <item:cookingforblockheads:preservation_chamber>;
var redstone = <item:minecraft:redstone>;
var sink = <item:cookingforblockheads:sink>;
var snowball = <item:minecraft:snowball>;
var terracotta = <item:minecraft:terracotta>;
var tinIngot = <item:geolosys:tin_ingot>;
var toaster = <item:cookingforblockheads:toaster>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Heating Unit
craftingTable.remove(heatingUnit);
craftingTable.addShaped("heating_unit", heatingUnit, [
    [ nickelNugget, nickelNugget, nickelNugget ],
    [ nickelIngot, copperConnector, nickelIngot ],
]);

// Ice Unit
craftingTable.remove(iceUnit);
craftingTable.addShaped("ice_unit", iceUnit, [
    [ snowball, snowball, snowball ],
    [ nickelIngot, comparator, nickelIngot ],
]);

// Oven
craftingTable.remove(oven);
craftingTable.addShaped("oven", oven, [
    [ anyBlackGlass, anyBlackGlass, anyBlackGlass ],
    [ aluminumIngot, furnaceItem, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Preservation Chamber
craftingTable.remove(preservationChamber);
craftingTable.addShaped("preservation_chamber", preservationChamber, [
    [ redstone, redstone, redstone ],
    [ platinumIngot, comparator, platinumIngot ],
]);

// Sink
craftingTable.remove(sink);
craftingTable.addShaped("sink", sink, [
    [ tinIngot, tinIngot, tinIngot ],
    [ terracotta, bucket, terracotta ],
    [ terracotta, fluidPipe, terracotta ],
]);

// Toaster
craftingTable.remove(toaster);
craftingTable.addShaped("toaster", toaster, [
    [ _, _, button ],
    [ aluminumIngot, ironTrapdoor, aluminumIngot ],
    [ aluminumIngot, lavaBucket, aluminumIngot ],
]);
