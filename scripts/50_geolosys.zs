////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var leadIngot = <item:geolosys:lead_ingot>;
var nickelIngot = <item:geolosys:nickel_ingot>;
var prospectorsPick = <item:geolosys:prospectors_pick>;
var stick = <item:minecraft:stick>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Prospector's Pick
craftingTable.remove(prospectorsPick);
craftingTable.addShaped("prospectors_pick", prospectorsPick, [
    [ nickelIngot, leadIngot ],
    [ _, stick ],
    [ _, stick ],
]);
