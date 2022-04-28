////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var anyChisel = <tag:items:chiselsandbits:chisel>;
var anyColorlessGlass = <tag:items:forge:glass/colorless>;
var anyLog = <tag:items:minecraft:logs>;
var anyYellowDye = <tag:items:forge:dyes/yellow>;
var chiseledBitStorage = <item:chiselsandbits:bit_storage>;
var leadIngot = <item:geolosys:lead_ingot>;
var measuringTape = <item:chiselsandbits:measuring_tape>;
var stringItem = <item:minecraft:string>;
var tinIngot = <item:geolosys:tin_ingot>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Chiseled Bit Storage
craftingTable.remove(chiseledBitStorage);
craftingTable.addShaped("chiseled_bit_storage", chiseledBitStorage, [
    [ leadIngot, anyColorlessGlass, leadIngot ],
    [ anyColorlessGlass, anyLog, anyColorlessGlass ],
    [ leadIngot, anyChisel, leadIngot ],
]);

// Measuring Tape
craftingTable.remove(measuringTape);
craftingTable.addShaped("measuring_tape", measuringTape, [
    [ _, _, stringItem ],
    [ tinIngot, stringItem, anyYellowDye ],
    [ tinIngot, tinIngot, _ ],
]);
