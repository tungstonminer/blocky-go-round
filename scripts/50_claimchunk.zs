////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var claimBlock = <item:cc:claim_block>;
var platinumIngot = <item:geolosys:platinum_ingot>;
var slab = <item:minecraft:polished_blackstone_slab>;
var wall = <item:minecraft:polished_blackstone_wall>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Claim Block
craftingTable.remove(claimBlock);
craftingTable.addShaped("claim_block", claimBlock, [
    [ platinumIngot, platinumIngot, platinumIngot ],
    [ _, wall, _ ],
    [ slab, slab, slab ],
]);
