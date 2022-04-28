////////////////////////////////////////////////////////////////////////////////////////////////////

var glass = <item:minecraft:glass>;
var ironBars = <item:minecraft:iron_bars>;
var leadIngot = <item:geolosys:lead_ingot>;
var metalFramedGlass = <item:valhelsia_structures:metal_framed_glass>;
var platinumIngot = <item:geolosys:platinum_ingot>;
var soulBrazier = <item:valhelsia_structures:soul_brazier>;
var soulFireBase = <tag:items:minecraft:soul_fire_base_blocks>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Metal Framed Glass
craftingTable.remove(metalFramedGlass);
craftingTable.addShaped("metal_framed_glass", metalFramedGlass * 8, [
    [ glass, glass, glass ],
    [ glass, leadIngot, glass ],
    [ glass, glass, glass ],
]);

// Soul Brazier
craftingTable.remove(soulBrazier);
craftingTable.addShaped("soul_brazier", soulBrazier, [
    [ ironBars, soulFireBase, ironBars ],
    [ platinumIngot, platinumIngot, platinumIngot ],
]);
