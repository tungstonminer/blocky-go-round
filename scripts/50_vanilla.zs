////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var diamond = <item:minecraft:diamond>;
var diamondHorseArmor = <item:minecraft:diamond_horse_armor>;
var goldHorseArmor = <item:minecraft:golden_horse_armor>;
var goldIngot = <item:minecraft:gold_ingot>;
var ironHorseArmor = <item:minecraft:iron_horse_armor>;
var ironIngot = <item:minecraft:iron_ingot>;
var leather = <item:minecraft:leather>;
var leatherHorseArmor = <item:minecraft:leather_horse_armor>;
var saddle = <item:minecraft:saddle>;
var stringItem = <item:minecraft:string>;
var wool = <tag:items:minecraft:wool>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Saddle
craftingTable.addShaped("saddle", saddle, [
    [ leather, leather, leather ],
    [ stringItem, _, stringItem ],
    [ ironIngot, _, ironIngot ],
]);

// Diamond Horse Armor
craftingTable.remove(diamondHorseArmor);
craftingTable.addShaped("diamond_horse_armor", diamondHorseArmor, [
    [ diamond, diamond, diamond ],
    [ diamond, wool, diamond ],
    [ diamond, _, diamond ],
]);

// Gold Horse Armor
craftingTable.remove(goldHorseArmor);
craftingTable.addShaped("gold_horse_armor", goldHorseArmor, [
    [ goldIngot, goldIngot, goldIngot ],
    [ goldIngot, wool, goldIngot ],
    [ goldIngot, _, goldIngot ],
]);

// Iron Horse Armor
craftingTable.remove(ironHorseArmor);
craftingTable.addShaped("iron_horse_armor", ironHorseArmor, [
    [ ironIngot, ironIngot, ironIngot ],
    [ ironIngot, wool, ironIngot ],
    [ ironIngot, _, ironIngot ],
]);

// Leather Horse Armor
craftingTable.remove(leatherHorseArmor);
craftingTable.addShaped("leather_horse_armor", leatherHorseArmor, [
    [ leather, leather, leather ],
    [ leather, wool, leather ],
    [ leather, _, leather ],
]);
