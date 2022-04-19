import crafttweaker.api.item.IItemStack;

////////////////////////////////////////////////////////////////////////////////////////////////////

var brassSheet = <item:create:brass_sheet>;
var brassRod = <item:createaddition:brass_rod>;
var bronzeIngot = <item:alloyed:bronze_ingot>;
var enderEye = <item:minecraft:ender_eye>;
var gadget = <item:weirdinggadget:weirding_gadget>;
var shaft = <item:create:shaft>;
var ironHelmet = <item:minecraft:iron_helmet>;

////////////////////////////////////////////////////////////////////////////////////////////////////

craftingTable.remove(gadget);
craftingTable.addShaped("weirding_gadget", gadget, [
    [bronzeIngot, brassRod, bronzeIngot],
    [brassSheet, enderEye, brassSheet],
    [brassSheet, ironHelmet, brassSheet],
]);
