////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var brassIngot = <item:create:brass_ingot>;
var bucket = <item:minecraft:bucket>;
var clock = <item:minecraft:clock>;
var chiseledStoneBricks = <item:minecraft:chiseled_stone_bricks>;
var compass = <item:minecraft:compass>;
var comparator = <item:minecraft:comparator>;
var crossbow = <item:minecraft:crossbow>;
var diamond = <item:minecraft:diamond>;
var diamondHorseArmor = <item:minecraft:diamond_horse_armor>;
var flint = <item:minecraft:flint>;
var flintAndSteel = <item:minecraft:flint_and_steel>;
var goldHorseArmor = <item:minecraft:golden_horse_armor>;
var goldIngot = <item:minecraft:gold_ingot>;
var ironAxe = <item:minecraft:iron_axe>;
var ironBoots = <item:minecraft:iron_boots>;
var ironChestplate = <item:minecraft:iron_chestplate>;
var ironHelmet = <item:minecraft:iron_helmet>;
var ironHoe = <item:minecraft:iron_hoe>;
var ironHorseArmor = <item:minecraft:iron_horse_armor>;
var ironIngot = <item:minecraft:iron_ingot>;
var ironLeggings = <item:minecraft:iron_leggings>;
var ironPickaxe = <item:minecraft:iron_pickaxe>;
var ironShovel = <item:minecraft:iron_shovel>;
var ironSword = <item:minecraft:iron_sword>;
var lantern = <item:minecraft:lantern>;
var leather = <item:minecraft:leather>;
var leatherHorseArmor = <item:minecraft:leather_horse_armor>;
var lodestone = <item:minecraft:lodestone>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var nickelNugget = <item:geolosys:nickel_nugget>;
var platinumNugget = <item:geolosys:platinum_nugget>;
var precisionMechanism = <item:create:precision_mechanism>;
var quartz = <item:minecraft:quartz>;
var redstone = <item:minecraft:redstone>;
var redstoneTorch = <item:minecraft:redstone_torch>;
var repeater = <item:minecraft:repeater>;
var saddle = <item:minecraft:saddle>;
var shears = <item:minecraft:shears>;
var shield = <item:minecraft:shield>;
var silicon = <item:tinyredstone:silicon>;
var soulLantern = <item:minecraft:soul_lantern>;
var soulTorch = <item:minecraft:soul_torch>;
var steelIngot = <item:alloyed:steel_ingot>;
var stick = <item:minecraft:stick>;
var stringItem = <item:minecraft:string>;
var tinIngot = <item:geolosys:tin_ingot>;
var tinNugget = <item:geolosys:tin_nugget>;
var torch = <item:minecraft:torch>;
var tripwireHook = <item:minecraft:tripwire_hook>;
var woodPlank = <tag:items:minecraft:planks>;
var wool = <tag:items:minecraft:wool>;

var ferrousIngot = ironIngot | nickelIngot;
var horizontal = <constant:minecraft:mirroraxis:horizontal>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Bucket
craftingTable.remove(bucket);
craftingTable.addShaped("bucket", bucket, [
    [ tinIngot, _, tinIngot ],
    [ _, tinIngot, _ ],
]);

// Clock
craftingTable.remove(clock);
craftingTable.addShaped("clock", clock, [
    [ _, tinNugget, _ ],
    [ _, precisionMechanism, tinNugget ],
    [ stringItem, _, _ ],
]);

// Comparator
craftingTable.remove(comparator);
craftingTable.addShaped("comparator", comparator, [
    [ _, redstoneTorch, _ ],
    [ redstoneTorch, quartz, redstoneTorch ],
    [ silicon, silicon, silicon ],
]);

// Compass
craftingTable.remove(compass);
craftingTable.addShaped("compass", compass, [
    [ _, tinIngot, ],
    [ tinIngot, nickelNugget, tinIngot ],
    [ _, tinIngot, ],
]);

// Crossbow
craftingTable.remove(crossbow);
craftingTable.addShaped("crossbow", crossbow, [
    [ stick, steelIngot, stick ],
    [ stringItem, tripwireHook, stringItem ],
    [ _, stick, _ ],
]);

// Diamond Horse Armor
craftingTable.remove(diamondHorseArmor);
craftingTable.addShaped("diamond_horse_armor", diamondHorseArmor, [
    [ diamond, diamond, diamond ],
    [ diamond, wool, diamond ],
    [ diamond, _, diamond ],
]);

// Flint and Steel
craftingTable.remove(flintAndSteel);
craftingTable.addShapeless("flint_and_steel", flintAndSteel, [ flint, steelIngot ]);

// Gold Horse Armor
craftingTable.remove(goldHorseArmor);
craftingTable.addShaped("gold_horse_armor", goldHorseArmor, [
    [ goldIngot, goldIngot, goldIngot ],
    [ goldIngot, wool, goldIngot ],
    [ goldIngot, _, goldIngot ],
]);

// Iron Axe
craftingTable.remove(ironAxe);
craftingTable.addShapedMirrored("iron_axe", horizontal, ironAxe, [
    [ ferrousIngot, ferrousIngot ],
    [ ferrousIngot, stick ],
    [ _, stick ],
]);

// Iron Boots
craftingTable.remove(ironBoots);
craftingTable.addShaped("iron_boots", ironBoots, [
    [ ferrousIngot, _, ferrousIngot ],
    [ ferrousIngot, _, ferrousIngot ],
]);

// Iron Chestplate
craftingTable.remove(ironChestplate);
craftingTable.addShaped("iron_chestplate", ironChestplate, [
    [ ferrousIngot, _, ferrousIngot ],
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
]);

// Iron Helmet
craftingTable.remove(ironHelmet);
craftingTable.addShaped("iron_helmet", ironHelmet, [
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
    [ ferrousIngot, _, ferrousIngot ],
]);

// Iron Hoe
craftingTable.remove(ironHoe);
craftingTable.addShapedMirrored("iron_hoe", horizontal, ironHoe, [
    [ ferrousIngot, ferrousIngot ],
    [ _, stick ],
    [ _, stick ],
]);

// Iron Horse Armor
craftingTable.remove(ironHorseArmor);
craftingTable.addShaped("iron_horse_armor", ironHorseArmor, [
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
    [ ferrousIngot, wool, ferrousIngot ],
    [ ferrousIngot, _, ferrousIngot ],
]);

// Iron Leggings
craftingTable.remove(ironLeggings);
craftingTable.addShaped("iron_leggings", ironLeggings, [
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
    [ ferrousIngot, _, ferrousIngot ],
    [ ferrousIngot, _, ferrousIngot ],
]);

// Iron Pickaxe
craftingTable.remove(ironPickaxe);
craftingTable.addShapedMirrored("iron_pickaxe", horizontal, ironPickaxe, [
    [ ferrousIngot, ferrousIngot, ferrousIngot ],
    [ _, stick, _ ],
    [ _, stick, _ ],
]);

// Iron Shovel
craftingTable.remove(ironShovel);
craftingTable.addShaped("iron_shovel", ironShovel, [
    [ ferrousIngot ],
    [ stick ],
    [ stick ],
]);

// Iron Sword
craftingTable.remove(ironSword);
craftingTable.addShaped("iron_sword", ironSword, [
    [ ferrousIngot ],
    [ ferrousIngot ],
    [ stick ],
]);

// Lantern
craftingTable.remove(lantern);
craftingTable.addShaped("lantern", lantern, [
    [ tinNugget, tinNugget, tinNugget ],
    [ tinNugget, torch, tinNugget ],
    [ tinNugget, tinNugget, tinNugget ],
]);

// Leather Horse Armor
craftingTable.remove(leatherHorseArmor);
craftingTable.addShaped("leather_horse_armor", leatherHorseArmor, [
    [ leather, leather, leather ],
    [ leather, wool, leather ],
    [ leather, _, leather ],
]);

// Lodestone
craftingTable.remove(lodestone);
craftingTable.addShaped("lodestone", lodestone, [
    [ chiseledStoneBricks, chiseledStoneBricks, chiseledStoneBricks ],
    [ chiseledStoneBricks, nickelIngot, chiseledStoneBricks ],
    [ chiseledStoneBricks, chiseledStoneBricks, chiseledStoneBricks ],
]);

// Repeater
craftingTable.remove(repeater);
craftingTable.addShaped("repeater", repeater, [
    [ redstoneTorch, redstone, redstoneTorch ],
    [ silicon, silicon, silicon ],
]);

// Saddle
craftingTable.addShaped("saddle", saddle, [
    [ leather, leather, leather ],
    [ stringItem, _, stringItem ],
    [ ironIngot, _, ironIngot ],
]);

// Shield
craftingTable.remove(shield);
craftingTable.addShaped("shield", shield, [
    [ woodPlank, steelIngot, woodPlank ],
    [ woodPlank, woodPlank, woodPlank ],
    [ _, woodPlank, _ ],
]);

// Soul Lantern
craftingTable.remove(soulLantern);
craftingTable.addShaped("soul_lanter", soulLantern, [
    [ platinumNugget, platinumNugget, platinumNugget ],
    [ platinumNugget, soulTorch, platinumNugget ],
    [ platinumNugget, platinumNugget, platinumNugget ],
]);
