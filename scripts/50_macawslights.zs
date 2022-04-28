////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var gardenLight = <item:mcwlights:garden_light>;
var glowstone = <item:minecraft:glowstone_dust>;
var lavaLamp = <item:mcwlights:lava_lamp>;
var lavaBucket = <item:minecraft:lava_bucket>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var nickelNugget = <item:geolosys:nickel_nugget>;
var tinIngot = <item:geolosys:tin_ingot>;
var tinNugget = <item:geolosys:tin_nugget>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Garden Light
craftingTable.remove(gardenLight);
craftingTable.addShaped("garden_light", gardenLight, [
    [ _, tinNugget, _ ],
    [ tinNugget, glowstone, tinNugget ],
    [ _, tinIngot, _ ],
]);

// Lava Lamp
craftingTable.remove(lavaLamp);
craftingTable.addShaped("lava_lamp", lavaLamp, [
    [ _, nickelNugget, _ ],
    [ nickelNugget, lavaBucket, nickelNugget ],
    [ _, nickelIngot, _ ],
]);
