import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

////////////////////////////////////////////////////////////////////////////////////////////////////

var itemsToRemove = [
    <item:createdeco:netherite_coin>,
    <item:createdeco:netherite_coinstack>,
    <item:createdeco:zinc_coin>,
    <item:createdeco:zinc_coinstack>,
] as IItemStack[];

////////////////////////////////////////////////////////////////////////////////////////////////////

// Remove all the items we don't want
for item in itemsToRemove {
    craftingTable.remove(item);
    JEI.hideIngredient(item);
}
