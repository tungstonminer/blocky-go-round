////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var bomb = <item:supplementaries:bomb>;
var brassIngot = <item:create:brass_ingot>;
var brassLantern = <item:supplementaries:brass_lantern>;
var brassNugget = <item:create:brass_nugget>;
var brassSheet = <item:create:brass_sheet>;
var bubbleBlower = <item:supplementaries:bubble_blower>.withDamage(250);
var copperLantern = <item:supplementaries:copper_lantern>;
var copperNugget = <item:create:copper_nugget>;
var faucet = <item:supplementaries:faucet>;
var glass = <item:minecraft:glass>;
var goblet = <item:supplementaries:goblet>;
var hourglass = <item:supplementaries:hourglass>;
var ironRod = <item:createaddition:iron_rod>;
var key = <item:supplementaries:key>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var platinumNugget = <item:geolosys:platinum_nugget>;
var redstone = <item:minecraft:redstone>;
var silverIngot = <item:geolosys:silver_ingot>;
var silverNugget = <item:geolosys:silver_nugget>;
var sconce = <item:supplementaries:sconce>;
var soulSconce = <item:supplementaries:sconce_soul>;
var soulTorch = <item:minecraft:soul_torch>;
var stick = <item:minecraft:stick>;
var stringItem = <item:minecraft:string>;
var tinIngot = <item:geolosys:tin_ingot>;
var tinNugget = <item:geolosys:tin_nugget>;
var torch = <item:minecraft:torch>;
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

// Brass Lantern
craftingTable.remove(brassLantern);
craftingTable.addShaped("brass_lantern", brassLantern, [
    [ brassNugget, brassNugget, brassNugget ],
    [ brassNugget, torch, brassNugget ],
    [ brassNugget, brassNugget, brassNugget ],
]);

// Bubble Blower
craftingTable.remove(bubbleBlower);
craftingTable.addShaped("bubble_blower", bubbleBlower, [
    [ _, tinNugget, tinNugget ],
    [ _, tinNugget, tinNugget ],
    [ tinIngot, _, _ ],
]);

// Copper Lantern
craftingTable.remove(copperLantern);
craftingTable.addShaped("copper_lantern", copperLantern, [
    [ copperNugget, copperNugget, copperNugget ],
    [ copperNugget, torch, copperNugget ],
    [ copperNugget, copperNugget, copperNugget ],
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

// Hourglass
craftingTable.remove(hourglass);
craftingTable.addShaped("hourglass", hourglass, [
    [ brassSheet ],
    [ glass ],
    [ brassSheet ],
]);

// Key
craftingTable.remove(key);
craftingTable.addShaped("key", key, [
    [ brassIngot ],
    [ brassNugget ],
    [ brassNugget ],
]);

// Sconce
craftingTable.remove(sconce);
craftingTable.addShaped("sconce", sconce, [
    [ tinNugget, torch, tinNugget ],
    [ _, tinNugget, _ ],
]);

// Soul Sconce
craftingTable.remove(soulSconce);
craftingTable.addShaped("soul_sconce", soulSconce, [
    [ platinumNugget, soulTorch, platinumNugget ],
    [ _, platinumNugget, _ ],
]);

// Wind Vane
craftingTable.remove(windVane);
craftingTable.addShaped("wind_vane", windVane, [
    [ _, tinIngot, _ ],
    [ tinIngot, ironRod, tinIngot ],
    [ _, redstone, _ ],
]);
