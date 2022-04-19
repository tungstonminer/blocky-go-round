import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.IItemStack;
import mods.create.FillingManager;
import mods.jei.JEI;

////////////////////////////////////////////////////////////////////////////////////////////////////

var fluidsToRemove = [
    <fluid:createcafe:aloe_tea>,
    <fluid:createcafe:apple_tea>,
    <fluid:createcafe:apricot_tea>,
    <fluid:createcafe:avocado_tea>,
    <fluid:createcafe:banana_tea>,
    <fluid:createcafe:blackberry_tea>,
    <fluid:createcafe:blood_tea>,
    <fluid:createcafe:blueberry_tea>,
    <fluid:createcafe:cherry_tea>,
    <fluid:createcafe:coconut_tea>,
    <fluid:createcafe:dragonfruit_tea>,
    <fluid:createcafe:durian_tea>,
    <fluid:createcafe:fig_tea>,
    <fluid:createcafe:gooseberry_tea>,
    <fluid:createcafe:grape_tea>,
    <fluid:createcafe:grapefruit_tea>,
    <fluid:createcafe:guava_tea>,
    <fluid:createcafe:jackfruit_tea>,
    <fluid:createcafe:kiwi_tea>,
    <fluid:createcafe:lavender_tea>,
    <fluid:createcafe:lemon_tea>,
    <fluid:createcafe:lime_tea>,
    <fluid:createcafe:lychee_tea>,
    <fluid:createcafe:mana_tea>,
    <fluid:createcafe:mango_tea>,
    <fluid:createcafe:orange_tea>,
    <fluid:createcafe:oreo_tea>,
    <fluid:createcafe:papaya_tea>,
    <fluid:createcafe:passionfruit_tea>,
    <fluid:createcafe:peach_tea>,
    <fluid:createcafe:persimmon_tea>,
    <fluid:createcafe:pineapple_tea>,
    <fluid:createcafe:plum_tea>,
    <fluid:createcafe:pomegranate_tea>,
    <fluid:createcafe:pumpkin_tea>,
    <fluid:createcafe:raspberry_tea>,
    <fluid:createcafe:starfruit_tea>,
    <fluid:createcafe:strawberry_tea>,
    <fluid:createcafe:sweetberry_tea>,
    <fluid:createcafe:tamarind_tea>,
    <fluid:createcafe:vanilla_tea>,
    <fluid:createcafe:watermelon_tea>,
    <fluid:createcafe:yucca_tea>,
] as IFluidStack[];

var bucketItems = [
    <item:createcafe:aloe_tea_bucket>,
    <item:createcafe:apple_tea_bucket>,
    <item:createcafe:apricot_tea_bucket>,
    <item:createcafe:avocado_tea_bucket>,
    <item:createcafe:banana_tea_bucket>,
    <item:createcafe:blackberry_tea_bucket>,
    <item:createcafe:blood_tea_bucket>,
    <item:createcafe:blueberry_tea_bucket>,
    <item:createcafe:cherry_tea_bucket>,
    <item:createcafe:coconut_tea_bucket>,
    <item:createcafe:dragonfruit_tea_bucket>,
    <item:createcafe:durian_tea_bucket>,
    <item:createcafe:fig_tea_bucket>,
    <item:createcafe:gooseberry_tea_bucket>,
    <item:createcafe:grape_tea_bucket>,
    <item:createcafe:grapefruit_tea_bucket>,
    <item:createcafe:guava_tea_bucket>,
    <item:createcafe:jackfruit_tea_bucket>,
    <item:createcafe:kiwi_tea_bucket>,
    <item:createcafe:lavender_tea_bucket>,
    <item:createcafe:lemon_tea_bucket>,
    <item:createcafe:lime_tea_bucket>,
    <item:createcafe:lychee_tea_bucket>,
    <item:createcafe:mana_tea_bucket>,
    <item:createcafe:mango_tea_bucket>,
    <item:createcafe:orange_tea_bucket>,
    <item:createcafe:oreo_tea_bucket>,
    <item:createcafe:papaya_tea_bucket>,
    <item:createcafe:passionfruit_tea_bucket>,
    <item:createcafe:peach_tea_bucket>,
    <item:createcafe:persimmon_tea_bucket>,
    <item:createcafe:pineapple_tea_bucket>,
    <item:createcafe:plum_tea_bucket>,
    <item:createcafe:pomegranate_tea_bucket>,
    <item:createcafe:pumpkin_tea_bucket>,
    <item:createcafe:raspberry_tea_bucket>,
    <item:createcafe:starfruit_tea_bucket>,
    <item:createcafe:strawberry_tea_bucket>,
    <item:createcafe:sweetberry_tea_bucket>,
    <item:createcafe:tamarind_tea_bucket>,
    <item:createcafe:vanilla_tea_bucket>,
    <item:createcafe:watermelon_tea_bucket>,
    <item:createcafe:yucca_tea_bucket>,
] as IItemStack[];

var teaItems = [
    <item:createcafe:aloe_milk_tea>,
    <item:createcafe:apple_milk_tea>,
    <item:createcafe:apricot_milk_tea>,
    <item:createcafe:avocado_milk_tea>,
    <item:createcafe:banana_milk_tea>,
    <item:createcafe:blackberry_milk_tea>,
    <item:createcafe:blood_orange_milk_tea>,
    <item:createcafe:blueberry_milk_tea>,
    <item:createcafe:cherry_milk_tea>,
    <item:createcafe:coconut_milk_tea>,
    <item:createcafe:dragonfruit_milk_tea>,
    <item:createcafe:durian_milk_tea>,
    <item:createcafe:fig_milk_tea>,
    <item:createcafe:gooseberry_milk_tea>,
    <item:createcafe:grape_milk_tea>,
    <item:createcafe:grapefruit_milk_tea>,
    <item:createcafe:guava_milk_tea>,
    <item:createcafe:jackfruit_milk_tea>,
    <item:createcafe:kiwi_milk_tea>,
    <item:createcafe:lavender_milk_tea>,
    <item:createcafe:lemon_milk_tea>,
    <item:createcafe:lime_milk_tea>,
    <item:createcafe:lychee_milk_tea>,
    <item:createcafe:mana_berry_milk_tea>,
    <item:createcafe:mango_milk_tea>,
    <item:createcafe:orange_milk_tea>,
    <item:createcafe:oreo_milk_tea>,
    <item:createcafe:papaya_milk_tea>,
    <item:createcafe:passionfruit_milk_tea>,
    <item:createcafe:peach_milk_tea>,
    <item:createcafe:persimmon_milk_tea>,
    <item:createcafe:pineapple_milk_tea>,
    <item:createcafe:plum_milk_tea>,
    <item:createcafe:pomegranate_milk_tea>,
    <item:createcafe:pumpkin_milk_tea>,
    <item:createcafe:raspberry_milk_tea>,
    <item:createcafe:starfruit_milk_tea>,
    <item:createcafe:strawberry_milk_tea>,
    <item:createcafe:sweetberry_milk_tea>,
    <item:createcafe:tamarind_milk_tea>,
    <item:createcafe:vanilla_milk_tea>,
    <item:createcafe:watermelon_milk_tea>,
    <item:createcafe:yucca_milk_tea>,
] as IItemStack[];

////////////////////////////////////////////////////////////////////////////////////////////////////

for teaItem in teaItems {
    <recipetype:create:filling>.remove(teaItem);
    JEI.hideIngredient(teaItem);
}

for bucketItem in bucketItems {
    <recipetype:create:filling>.remove(bucketItem);
    JEI.hideIngredient(bucketItem);
}

for fluid in fluidsToRemove {
    JEI.hideIngredient(fluid * 1000);
}

JEI.hideIngredient(<item:createcafe:boba_cup>);
JEI.hideIngredient(<item:createcafe:empty_boba_cup>);
