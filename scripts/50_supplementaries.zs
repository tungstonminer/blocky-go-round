////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var bomb = <item:supplementaries:bomb>;
var bubbleBlower = <item:supplementaries:bubble_blower>.withDamage(250);
var faucet = <item:supplementaries:faucet>;
var goblet = <item:supplementaries:goblet>;
var ironRod = <item:createaddition:iron_rod>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var redstone = <item:minecraft:redstone>;
var silverIngot = <item:geolosys:silver_ingot>;
var silverNugget = <item:geolosys:silver_nugget>;
var stick = <item:minecraft:stick>;
var stringItem = <item:minecraft:string>;
var tinIngot = <item:geolosys:tin_ingot>;
var tinNugget = <item:geolosys:tin_nugget>;
var tnt = <item:minecraft:tnt>;
var valveHandle = <tag:items:create:valve_handles>;
var windVane = <item:supplementaries:wind_vane>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Bomb
craftingTable.remove(bomb);
craftingTable.addShaped("bomb", bomb * 4, [
    [ _, nickelIngot, stringItem ],
    [ nickelIngot, tnt, nickelIngot ],
    [ _, nickelIngot, _ ],
]);

// Bubble Blower
craftingTable.remove(bubbleBlower);
craftingTable.addShaped("bubble_blower", bubbleBlower, [
    [ _, tinNugget, tinNugget ],
    [ _, tinNugget, tinNugget ],
    [ tinIngot, _, _ ],
]);

// Faucet
craftingTable.remove(faucet);
craftingTable.addShaped("faucet", faucet, [
    [ _, valveHandle, _ ],
    [ tinIngot, tinIngot, tinIngot ],
    [ _, _, tinIngot ],
]);

// Goblet
craftingTable.remove(goblet);
craftingTable.addShaped("goblet", goblet, [
    [ silverNugget, _, silverNugget ],
    [ silverNugget, silverIngot, silverNugget ],
    [ _, silverNugget, _ ],
]);

// Wind Vane
craftingTable.remove(windVane);
craftingTable.addShaped("wind_vane", windVane, [
    [ _, tinIngot, _ ],
    [ tinIngot, ironRod, tinIngot ],
    [ _, redstone, _ ],
]);
