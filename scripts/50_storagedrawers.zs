////////////////////////////////////////////////////////////////////////////////////////////////////

var anyStorageDrawer = <tag:items:storagedrawers:drawers>;
var compactingDrawers = <item:storagedrawers:compacting_drawers_3>;
var comparator = <item:minecraft:comparator>;
var shroudKey = <item:storagedrawers:shroud_key>;
var controller = <item:storagedrawers:controller>;
var controllerSlave = <item:storagedrawers:controller_slave>;
var drawerKey = <item:storagedrawers:drawer_key>;
var enderEye = <item:minecraft:ender_eye>;
var goldIngot = <item:minecraft:gold_ingot>;
var ironSheet = <item:create:iron_sheet>;
var key = <item:supplementaries:key>;
var leadIngot = <item:geolosys:lead_ingot>;
var piston = <item:minecraft:piston>;
var platinumIngot = <item:geolosys:silver_ingot>;
var quantifyKey = <item:storagedrawers:quantify_key>;
var upgradeTemplate = <item:storagedrawers:upgrade_template>;
var writableBook = <item:minecraft:writable_book>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Concealment Key
craftingTable.remove(shroudKey);
craftingTable.addShapeless("shroud_key", shroudKey, [ key, enderEye ]);

// Controller
craftingTable.remove(controller);
craftingTable.addShaped("controller", controller, [
    [ ironSheet, ironSheet, ironSheet ],
    [ comparator, anyStorageDrawer, comparator ],
    [ ironSheet, platinumIngot, ironSheet ],
]);

// Controller Slave
craftingTable.remove(controllerSlave);
craftingTable.addShaped("controller_slave", controllerSlave, [
    [ ironSheet, ironSheet, ironSheet ],
    [ comparator, anyStorageDrawer, comparator ],
    [ ironSheet, goldIngot, ironSheet ],
]);

// Compacting Drawers
craftingTable.remove(compactingDrawers);
craftingTable.addShaped("compacting_drawers", compactingDrawers, [
    [ ironSheet, ironSheet, ironSheet ],
    [ piston, anyStorageDrawer, piston ],
    [ ironSheet, leadIngot, ironSheet ],
]);

// Drawer Key
craftingTable.remove(drawerKey);
craftingTable.addShapeless("drawer_key", drawerKey, [ key, upgradeTemplate ]);

// Quantify Key
craftingTable.remove(quantifyKey);
craftingTable.addShapeless("quantify_key", quantifyKey, [ key, writableBook ]);
