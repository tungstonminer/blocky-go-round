import mods.initialinventory.InvHandler;

////////////////////////////////////////////////////////////////////////////////////////////////////

var claimBlock = <item:cc:claim_block>;
var goldCoin = <item:createdeco:gold_coin>;

////////////////////////////////////////////////////////////////////////////////////////////////////

InvHandler.addStartingItem("10 gold coins", goldCoin * 10);
InvHandler.addStartingItem("claim block", claimBlock);
