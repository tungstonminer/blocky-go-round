////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var anyColorlessGlass = <tag:items:forge:glass/colorless>;
var button = <item:minecraft:stone_button>;
var garageDoor = <item:mcwdoors:garage_white_door>;
var garageRemote = <item:mcwdoors:garage_remote>;
var glassPane = <item:minecraft:glass_pane>;
var metalDoor = <item:mcwdoors:metal_door>;
var metalHospitalDoor = <item:mcwdoors:metal_hospital_door>;
var metalReinforcedDoor = <item:mcwdoors:metal_reinforced_door>;
var metalWarningDoor = <item:mcwdoors:metal_warning_door>;
var metalWindowedDoor = <item:mcwdoors:metal_windowed_door>;
var orangeDecal = <item:createdeco:orange_decal>;
var redstoneLink = <item:create:redstone_link>;
var steelSheet = <item:alloyed:steel_sheet>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Garage Remote
craftingTable.remove(garageRemote);
craftingTable.addShaped("garage_remote", garageRemote, [
    [ redstoneLink ],
    [ button ],
]);

// Metal Door
craftingTable.remove(metalDoor);
craftingTable.addShaped("metal_door", metalDoor * 3, [
    [ aluminumIngot, aluminumIngot ],
    [ aluminumIngot, aluminumIngot ],
    [ aluminumIngot, aluminumIngot ],
]);

// Metal Hospital Door
craftingTable.remove(metalHospitalDoor);
craftingTable.addShaped("metal_hospital_door", metalHospitalDoor * 3, [
    [ aluminumIngot, glassPane ],
    [ aluminumIngot, aluminumIngot ],
    [ aluminumIngot, aluminumIngot ],
]);

// Metal Reinforced Door
craftingTable.remove(metalReinforcedDoor);
craftingTable.addShaped("metal_reinforced_door", metalReinforcedDoor, [
    [ steelSheet ],
    [ metalDoor ],
    [ steelSheet ],
]);

// Metal Warning Door
craftingTable.remove(metalWarningDoor);
craftingTable.addShaped("metal_warning_door", metalWarningDoor, [
    [ orangeDecal ],
    [ metalDoor ],
    [ orangeDecal ],
]);

// Metal Windowed Door
craftingTable.remove(metalWindowedDoor);
craftingTable.addShaped("metal_windowed_door", metalWindowedDoor * 3, [
    [ aluminumIngot, glassPane ],
    [ aluminumIngot, glassPane ],
    [ aluminumIngot, aluminumIngot ],
]);

// White Garage Door
craftingTable.remove(garageDoor);
craftingTable.addShaped("white_garage_door", garageDoor, [
    [ aluminumIngot, aluminumIngot, aluminumIngot ],
    [ aluminumIngot, anyColorlessGlass, aluminumIngot ],
]);
