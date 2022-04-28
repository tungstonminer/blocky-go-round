////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var leadIngot = <item:geolosys:lead_ingot>;
var lockBlock = <item:supplementaries:lock_block>;
var redstone = <item:minecraft:redstone>;
var repeater = <item:minecraft:repeater>;
var silicon = <item:tinyredstone:silicon>;
var silverIngot = <item:geolosys:silver_ingot>;
var tinySuperRepeater = <item:tinyredstone:tiny_super_repeater>;
var woodPlank = <tag:items:minecraft:planks>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Lock Block
craftingTable.remove(lockBlock);
craftingTable.addShaped("lock_block", lockBlock, [
    [ leadIngot, woodPlank, leadIngot ],
    [ woodPlank, redstone, woodPlank ],
    [ leadIngot, woodPlank, leadIngot ],
]);

// Tiny Super Repeater
craftingTable.remove(tinySuperRepeater);
craftingTable.addShaped("tiny_super_repeater", tinySuperRepeater * 8, [
    [ silverIngot, silicon, silverIngot ],
    [ silverIngot, repeater, silverIngot ],
    [ _, silverIngot, _ ],
]);
