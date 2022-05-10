import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

////////////////////////////////////////////////////////////////////////////////////////////////////

var platinumNugget = <item:geolosys:platinum_nugget>;
var platinumCoin = <item:createdeco:zinc_coin>;
var silverNugget = <item:geolosys:silver_nugget>;
var silverCoin = <item:createdeco:iron_coin>;

var presser = <recipetype:create:pressing>;

var itemsToRemove = [
    <item:createdeco:brass_coin>,
    <item:createdeco:brass_coinstack>,
    <item:createdeco:netherite_coin>,
    <item:createdeco:netherite_coinstack>,
] as IItemStack[];

////////////////////////////////////////////////////////////////////////////////////////////////////

// Remove all the items we don't want
for item in itemsToRemove {
    craftingTable.remove(item);
    JEI.hideIngredient(item);
}

// Platinum Coin
presser.remove(platinumCoin);
presser.addRecipe("platinum_coin", [ platinumCoin ], platinumNugget);

// Silver Coin
presser.remove(silverCoin);
presser.addRecipe("silver_coin", [ silverCoin ], silverNugget);
