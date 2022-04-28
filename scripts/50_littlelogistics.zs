////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var accumulator = <item:createaddition:accumulator>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var anySeat = <tag:items:create:seats>;
var capacitor = <item:createaddition:capacitor>;
var chest = <item:minecraft:chest>;
var chestBarge = <item:littlelogistics:barge>;
var chunkLoaderBarge = <item:littlelogistics:chunk_loader_barge>;
var compass = <item:minecraft:compass>;
var electricMotor = <item:createaddition:electric_motor>;
var energyTug = <item:littlelogistics:energy_tug>;
var fishingBarge = <item:littlelogistics:fishing_barge>;
var fluidBarge = <item:littlelogistics:fluid_barge>;
var fluidTank = <item:create:fluid_tank>;
var mechanicalArm = <item:create:mechanical_arm>;
var piston = <item:minecraft:piston>;
var redstoneLink = <item:create:redstone_link>;
var seaterBarge = <item:littlelogistics:seater_barge>;
var silverIngot = <item:geolosys:silver_ingot>;
var steelFishingRod = <item:alloyed:steel_fishing_rod>;
var stick = <item:minecraft:stick>;
var tugRoute = <item:littlelogistics:tug_route>;
var vesselCharger = <item:littlelogistics:vessel_charger>;
var weirdingGadget = <item:weirdinggadget:weirding_gadget>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Chest Barge
craftingTable.remove(chestBarge);
craftingTable.addShaped("chest_barge", chestBarge, [
    [ aluminumIngot, chest, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Chunk Loader Barge
craftingTable.remove(chunkLoaderBarge);
craftingTable.addShaped("chunk_loader_barge", chunkLoaderBarge, [
    [ aluminumIngot, weirdingGadget, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Energy Tug
craftingTable.remove(energyTug);
craftingTable.addShaped("energy_tug", energyTug, [
    [ _, accumulator, _ ],
    [ aluminumIngot, electricMotor, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Fishing Barge
craftingTable.remove(fishingBarge);
craftingTable.addShaped("fishing_barge", fishingBarge, [
    [ _, mechanicalArm, steelFishingRod ],
    [ aluminumIngot, chest, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Fluid Barge
craftingTable.remove(fluidBarge);
craftingTable.addShaped("fluid_barge", fluidBarge, [
    [ aluminumIngot, fluidTank, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Seater Barge
craftingTable.remove(seaterBarge);
craftingTable.addShaped("seater_barge", seaterBarge, [
    [ aluminumIngot, anySeat, aluminumIngot ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);

// Tug Route
craftingTable.remove(tugRoute);
craftingTable.addShaped("tug_route", tugRoute, [
    [ redstoneLink ],
    [ compass ],
]);

// Vessel Charger
craftingTable.remove(vesselCharger);
craftingTable.addShaped("vessel_charger", vesselCharger, [
    [ _, accumulator, _ ],
    [ capacitor, capacitor, capacitor ],
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
]);
