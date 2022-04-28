import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.item.IItemStack;

////////////////////////////////////////////////////////////////////////////////////////////////////

var _ = <item:minecraft:air>;
var leadIngot = <item:geolosys:lead_ingot>;

var colors = [
    "black", "blue", "brown", "cyan", "gray", "green", "light_blue", "light_gray", "lime",
    "magenta", "orange", "pink", "purple", "red", "white", "yellow"
] as string[];

////////////////////////////////////////////////////////////////////////////////////////////////////

function getStainedGlass(color: string) as IItemStack {
    return BracketHandlers.getItem("minecraft:" + color + "_stained_glass");
}

function getMosaicGlass(color: string) as IItemStack {
    return BracketHandlers.getItem("mcwwindows:" + color + "_mosaic_glass");
}

////////////////////////////////////////////////////////////////////////////////////////////////////

// Mosaic Glass -- use lead instead of more dye
for color in colors {
    var stainedGlass = getStainedGlass(color);
    var mosaicGlass = getMosaicGlass(color);

    craftingTable.remove(mosaicGlass);
    craftingTable.addShaped(color + "_mosaic_glass", mosaicGlass * 8, [
        [ stainedGlass, stainedGlass, stainedGlass ],
        [ stainedGlass, leadIngot, stainedGlass ],
        [ stainedGlass, stainedGlass, stainedGlass ],
    ]);
}
