////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var andesiteAlloy = <item:create:andesite_alloy>;
var andesiteCasing = <item:create:andesite_casing>;
var copperConnector = <item:createaddition:connector>;
var electronTube = <item:create:electron_tube>;
var ironSheet = <item:create:iron_sheet>;
var leadIngot = <item:geolosys:lead_ingot>;
var redstone = <item:minecraft:redstone>;
var redstoneRelay = <item:createaddition:redstone_relay>;
var rollingMill = <item:createaddition:rolling_mill>;
var shaft = <item:create:shaft>;
var silicon = <item:tinyredstone:silicon>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Redstone Relay
craftingTable.remove(redstoneRelay);
craftingTable.addShaped("redstone_relay", redstoneRelay, [
    [ _, redstone, _ ],
    [ copperConnector, electronTube, copperConnector ],
    [ silicon, silicon, silicon ],
]);

// Rolling Mill
craftingTable.remove(rollingMill);
craftingTable.addShaped("rolling_mill", rollingMill, [
    [ ironSheet, shaft, ironSheet ],
    [ andesiteAlloy, shaft, andesiteAlloy ],
    [ leadIngot, andesiteCasing, leadIngot ],
]);
