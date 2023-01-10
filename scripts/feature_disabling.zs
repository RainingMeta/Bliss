import crafttweaker.api.recipe.Replacer;

craftingTable.remove(<item:minecraft:tuff>);

var tag_cooked_eggs = <tag:items:forge:cooked_eggs>;
tag_cooked_eggs.remove(<item:incubation:fried_egg>);

var tag_seed_pouch = <tag:items:quark:seed_pouch_holdable>;
tag_seed_pouch.remove(<item:minecraft:sweet_berries>);

var tag_milk = <tag:items:forge:milk>;
tag_milk.remove(<item:farmersdelight:milk_bottle>);

var tag_soul_fire_base = <tag:items:minecraft:soul_fire_base_blocks>;
tag_soul_fire_base.remove(<item:nethersdelight:soul_compost>);
tag_soul_fire_base.remove(<item:nethersdelight:rich_soul_soil>);

var tag_banana = <tag:items:forge:fruits/banana>;
tag_banana.remove(<item:alexsmobs:banana>);

var tag_dictionary_ingredient = <tag:items:alexsmobs:animal_dictionary_ingredient>;
tag_dictionary_ingredient.remove(<item:alexsmobs:dropbear_claw>);
