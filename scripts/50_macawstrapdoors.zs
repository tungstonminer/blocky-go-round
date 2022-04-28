////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var aluminumIngot = <item:geolosys:aluminum_ingot>;
var glassPane = <item:minecraft:glass_pane>;
var metalGlassTrapdoor = <item:mcwtrpdoors:metal_trapdoor>;
var metalTrapdoor = <item:mcwtrpdoors:metal_full_trapdoor>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Metal Glass Trapdoor
craftingTable.remove(metalGlassTrapdoor);
craftingTable.addShaped("metal_glass_trapdoor", metalGlassTrapdoor, [
    [ aluminumIngot, glassPane, aluminumIngot ],
    [ aluminumIngot, glassPane, aluminumIngot ],
]);

// Metal Trapdoor
craftingTable.remove(metalTrapdoor);
craftingTable.addShaped("metal_trapdoor", metalTrapdoor, [
    [ aluminumIngot, aluminumIngot ],
    [ aluminumIngot, aluminumIngot ],
]);
