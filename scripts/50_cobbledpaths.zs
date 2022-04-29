////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var sledgehammer = <item:cobbled_paths:sledgehammer>;
var bronzeIngot = <item:alloyed:bronze_ingot>;
var stick = <item:minecraft:stick>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Sledgehammer
craftingTable.remove(sledgehammer);
craftingTable.addShaped("sledgehammer", sledgehammer, [
    [ _, bronzeIngot, _ ],
    [ _, stick, bronzeIngot ],
    [ stick, _, _ ],
]);
