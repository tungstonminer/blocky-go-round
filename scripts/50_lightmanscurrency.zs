import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var atm = <item:lightmanscurrency:atm>;
var capacitor = <item:createaddition:capacitor>;
var cashRegister = <item:lightmanscurrency:cash_register>;
var chest = <item:minecraft:chest>;
var comparator = <item:minecraft:comparator>;
var copperIngot = <item:minecraft:copper_ingot>;
var copperWallet = <item:lightmanscurrency:wallet_copper>;
var diamond = <item:minecraft:diamond>;
var diamondWallet = <item:lightmanscurrency:wallet_diamond>;
var emerald = <item:minecraft:emerald>;
var emeraldWallet = <item:lightmanscurrency:wallet_emerald>;
var glassPane = <item:minecraft:glass_pane>;
var goldIngot = <item:minecraft:gold_ingot>;
var goldWallet = <item:lightmanscurrency:wallet_gold>;
var ironIngot = <item:minecraft:iron_ingot>;
var ironSheet = <item:create:iron_sheet>;
var ironWallet = <item:lightmanscurrency:wallet_iron>;
var leather = <item:minecraft:leather>;
var netherIngot = <item:minecraft:netherite_ingot>;
var netherWallet = <item:lightmanscurrency:wallet_netherite>;
var panel = <item:tinyredstone:redstone_panel>;
var server = <item:lightmanscurrency:item_trader_server_sml>;
var tradingCore = <item:lightmanscurrency:trading_core>;
var tube = <item:create:electron_tube>;
var wire = <item:createaddition:copper_wire>;

var itemsToRemove = [
    <item:lightmanscurrency:coin_copper>,
    <item:lightmanscurrency:coin_diamond>,
    <item:lightmanscurrency:coin_emerald>,
    <item:lightmanscurrency:coin_gold>,
    <item:lightmanscurrency:coin_iron>,
    <item:lightmanscurrency:coin_netherite>,
    <item:lightmanscurrency:coinblock_copper>,
    <item:lightmanscurrency:coinblock_diamond>,
    <item:lightmanscurrency:coinblock_emerald>,
    <item:lightmanscurrency:coinblock_gold>,
    <item:lightmanscurrency:coinblock_iron>,
    <item:lightmanscurrency:coinblock_netherite>,
    <item:lightmanscurrency:coinmint>,
    <item:lightmanscurrency:coinpile_copper>,
    <item:lightmanscurrency:coinpile_diamond>,
    <item:lightmanscurrency:coinpile_emerald>,
    <item:lightmanscurrency:coinpile_gold>,
    <item:lightmanscurrency:coinpile_iron>,
    <item:lightmanscurrency:coinpile_netherite>,
    <item:lightmanscurrency:portable_atm>,
    <item:lightmanscurrency:portable_terminal>,
] as IItemStack[];

////////////////////////////////////////////////////////////////////////////////////////////////////

// Remove all the items we don't want
for item in itemsToRemove {
    craftingTable.remove(item);
    JEI.hideIngredient(item);
}

// Remove recipes which require removed items
craftingTable.removeByName("lightmanscurrency:portable_atm2");
craftingTable.removeByName("lightmanscurrency:portable_terminal2");

////////////////////////////////////////////////////////////////////////////////////////////////////

// ATM
craftingTable.remove(atm);
craftingTable.addShaped("atm", atm, [
    [ ironSheet, glassPane, ironSheet ],
    [ ironSheet, comparator, ironSheet ],
    [ ironSheet, goldWallet, ironSheet ],
]);

// Cash Register
craftingTable.remove(cashRegister);
craftingTable.addShaped("cash_register", cashRegister, [
    [ ironSheet, ironSheet, ironSheet ],
    [ capacitor, ironWallet, tube ],
    [ ironSheet, ironSheet, ironSheet ],
]);

// Copper Wallet
craftingTable.remove(copperWallet);
craftingTable.addShaped("copper_wallet", copperWallet, [[ leather, copperIngot, leather ]]);

// Diamond Wallet
craftingTable.remove(diamondWallet);
craftingTable.addShaped("diamond_wallet", diamondWallet, [[ leather, diamond, leather ]]);
craftingTable.addShapeless("diamond_wallet_upgrade", diamondWallet, [ emeraldWallet, diamond ]);

// Emerald Wallet
craftingTable.remove(emeraldWallet);
craftingTable.addShaped("emerald_wallet", emeraldWallet, [[ leather, emerald, leather ]]);
craftingTable.addShapeless("emerald_wallet_upgrade", emeraldWallet, [ goldWallet, emerald ]);

// Gold Wallet
craftingTable.remove(goldWallet);
craftingTable.addShaped("gold_wallet", goldWallet, [[ leather, goldIngot, leather ]]);
craftingTable.addShapeless("gold_wallet_upgrade", goldWallet, [ ironWallet, goldIngot ]);

// Iron Wallet
craftingTable.remove(ironWallet);
craftingTable.addShaped("iron_wallet", ironWallet, [[ leather, ironIngot, leather ]]);
craftingTable.addShapeless("iron_wallet_upgrade", ironWallet, [ copperWallet, ironIngot ]);

// Netherite Wallet
craftingTable.remove(netherWallet);
craftingTable.addShaped("nether_wallet", netherWallet, [[ leather, netherIngot, leather ]]);
craftingTable.addShapeless("nether_wallet_upgrade", netherWallet, [ diamondWallet, netherIngot ]);

// Trading Core
craftingTable.remove(tradingCore);
craftingTable.addShaped("trading_core", tradingCore, [
    [ _, wire, _ ],
    [ tube, panel, capacitor ]
]);
