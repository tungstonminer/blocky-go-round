////////////////////////////////////////////////////////////////////////////////////////////////////

var backpack = <item:backpacked:backpack>;
var brassIngot = <item:create:brass_ingot>;
var ironIngot = <item:minecraft:iron_ingot>;
var leather = <item:minecraft:leather>;
var silverIngot = <item:geolosys:silver_ingot>;
var stringItem = <item:minecraft:string>;

var anyBucketIngot = <tag:items:blockygoround:bucket_ingot>;
anyBucketIngot.add(brassIngot, ironIngot, silverIngot);

////////////////////////////////////////////////////////////////////////////////////////////////////

// Backpack -- change to use regular leather and allow more metal buckels
craftingTable.remove(backpack);
craftingTable.addShaped("backpack_from_leather", backpack, [
    [ leather, leather, leather ],
    [ stringItem, anyBucketIngot, stringItem ],
    [ leather, leather, leather ],
]);
