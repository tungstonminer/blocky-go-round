////////////////////////////////////////////////////////////////////////////////////////////////////

var bronzeIngot = <item:alloyed:bronze_ingot>;
var copperIngot = <item:minecraft:copper_ingot>;
var tinIngot = <item:geolosys:tin_ingot>;

var heated = <constant:create:heat_condition:heated>;
var mixer = <recipetype:create:mixing>;

////////////////////////////////////////////////////////////////////////////////////////////////////

// Bronze Ingot
mixer.remove(bronzeIngot);
mixer.addRecipe(
    "bronze_ingot",
    heated,
    [ bronzeIngot * 4 ],
    [ copperIngot * 3, tinIngot ],
    [],
    200
 );
