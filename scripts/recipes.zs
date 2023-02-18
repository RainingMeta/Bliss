import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.misc.Composter;

var air = <item:minecraft:air>;
var book = <item:minecraft:book>;
var glowstone_block = <item:minecraft:glowstone>;
var glowstone_dust = <item:minecraft:glowstone_dust>;
var bookshelves = <tag:items:bliss:bookshelves>;
var canvas = <item:farmersdelight:canvas>;
var crop_tag = <tag:items:quark:seed_pouch_holdable>;
var heart_of_the_sea = <item:minecraft:heart_of_the_sea>;
var honey_bottle = <item:minecraft:honey_bottle>;
var iron = <tag:items:forge:ingots/iron>;
var ladder = <item:minecraft:ladder>;
var leather = <item:minecraft:leather>;
var oak_logs = <tag:items:minecraft:oak_logs>;
var oak_planks = <item:minecraft:oak_planks>;
var paraglider = <item:paraglider:paraglider>;
var piston = <item:minecraft:piston>;
var planks = <tag:items:minecraft:planks>;
var prismarine_shard = <item:minecraft:prismarine_shard>;
var quartz = <item:minecraft:quartz>;
var rotten_flesh = <item:minecraft:rotten_flesh>;
var slime = <item:minecraft:slime_ball>;
var stick = <item:minecraft:stick>;
var string_item = <item:minecraft:string>;
var paper = <item:minecraft:paper>;
var antique_ink = <item:supplementaries:antique_ink>;

var axes = <tag:items:forge:tools/axes>;
var hoes = <tag:items:forge:tools/hoes>;
var pickaxes = <tag:items:forge:tools/pickaxes>;
var knives = <tag:items:forge:tools/knives>;

// Remove some recipes that shouldn't be in here
craftingTable.remove(paraglider);
craftingTable.removeByName("minecraft:painting");
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("minecraft:scaffolding");

// Replace Rabbit Hide in recipes with Leather
craftingTable.removeByName("quark:tools/crafting/seed_pouch");
craftingTable.removeByName("quark:tools/crafting/bundle");
craftingTable.removeByName("supplementaries:slingshot");

craftingTable.addShaped("leather_seed_pouch",
		<item:quark:seed_pouch>,
		[[string_item, leather, string_item],
		 [leather, crop_tag, leather],
		 [air, leather, air]]);
 craftingTable.addShaped("leather_slingshot",
		<item:supplementaries:slingshot>,
		[[string_item, leather, string_item],
		 [stick, slime, stick],
		 [air, stick, air]]);

// Pre-End Iron Rod
craftingTable.removeByName("quark:automation/crafting/iron_rod");
craftingTable.addShaped("earlygame_iron_rod",
		<item:quark:iron_rod>,
		[[iron], [iron], [iron]]);

// RF to Leather
furnace.addRecipe("rf2leather", leather, rotten_flesh, 0.0, 200);

// Recycle Paraglider
CuttingBoard.addRecipe("recycle_paraglider", leather * 4, paraglider, knives);

// Honey Sticky Piston
craftingTable.addShaped("honey_sticky_piston",
		<item:minecraft:sticky_piston>,
		[[honey_bottle],
		[piston]]);

// Planks to Ash
furnace.addRecipe("pl2ash", <item:supplementaries:ash>, planks, 0.0, 40);

// Non lethal recipes for supp stuff, autogenerated
craftingTable.addShapeless("honey_soap",
	<item:supplementaries:soap> * 4,
	[<item:minecraft:water_bucket>, <tag:items:forge:ash>, <tag:items:forge:ash>, <tag:items:forge:ash>, <tag:items:forge:ash>, <item:minecraft:honeycomb>]);
craftingTable.addShaped("honey_sling", <item:supplementaries:slingshot>,
	[[<item:minecraft:string>, <item:minecraft:leather>, <item:minecraft:string>],
	[<item:minecraft:stick>, <item:minecraft:honey_bottle>, <item:minecraft:stick>],
	[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

// Bookshelf cut to book
CuttingBoard.addRecipe("remove_book", book * 3, bookshelves, axes);

// Glass cuts into shards
var glassBreak = "minecraft:block.glass.break";

CuttingBoard.addRecipeWithSound("clear_glass_sharding", <item:quark:clear_shard> * 4, <item:minecraft:glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("dirty_glass_sharding", <item:quark:dirty_shard> * 4, <item:quark:dirty_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("black_glass_sharding", <item:quark:black_shard> * 4, <item:minecraft:black_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("blue_glass_sharding", <item:quark:blue_shard> * 4, <item:minecraft:blue_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("brown_glass_sharding", <item:quark:brown_shard> * 4, <item:minecraft:brown_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("cyan_glass_sharding", <item:quark:cyan_shard> * 4, <item:minecraft:cyan_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("gray_glass_sharding", <item:quark:gray_shard> * 4, <item:minecraft:gray_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("green_glass_sharding", <item:quark:green_shard> * 4, <item:minecraft:green_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("light_blue_glass_sharding", <item:quark:light_blue_shard> * 4, <item:minecraft:light_blue_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("light_gray_glass_sharding", <item:quark:light_gray_shard> * 4, <item:minecraft:light_gray_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("lime_glass_sharding", <item:quark:lime_shard> * 4, <item:minecraft:lime_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("magenta_glass_sharding", <item:quark:magenta_shard> * 4, <item:minecraft:magenta_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("orange_glass_sharding", <item:quark:orange_shard> * 4, <item:minecraft:orange_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("pink_glass_sharding", <item:quark:pink_shard> * 4, <item:minecraft:pink_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("purple_glass_sharding", <item:quark:purple_shard> * 4, <item:minecraft:purple_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("red_glass_sharding", <item:quark:red_shard> * 4, <item:minecraft:red_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("white_glass_sharding", <item:quark:white_shard> * 4, <item:minecraft:white_stained_glass>, pickaxes, glassBreak);
CuttingBoard.addRecipeWithSound("yellow_glass_sharding", <item:quark:yellow_shard> * 4, <item:minecraft:yellow_stained_glass>, pickaxes, glassBreak);

// Glowstone cuts into dust
CuttingBoard.addRecipeWithSound("glowstone_dusting", glowstone_dust * 4, glowstone_block, pickaxes, glassBreak);

// Compostable Overweight Crops
composter.setValue(<item:overweight_farming:overweight_beetroot_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_carrot_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_cocoa_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_potato_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_baked_potato_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_poisonous_potato_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_onion_block>, 1.0);
composter.setValue(<item:overweight_farming:overweight_cabbage_block>, 1.0);
composter.setValue(<item:overweight_farming:seeded_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:half_seeded_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:seedless_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:waxed_seeded_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:waxed_half_seeded_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:waxed_seedless_peeled_melon>, 0.65);
composter.setValue(<item:overweight_farming:peeled_overweight_beetroot_block>, 1.0);
composter.setValue(<item:overweight_farming:peeled_overweight_carrot_block>, 1.0);
composter.setValue(<item:overweight_farming:peeled_overweight_potato_block>, 1.0);
composter.setValue(<item:overweight_farming:peeled_overweight_onion_block>, 1.0);
composter.setValue(<item:overweight_farming:vegetable_compost>, 1.0);
composter.setValue(<item:overweight_farming:allium_bush>, 0.65);

// Cutting board peeling/breakdown of Overweight Crops
var stripSound = "minecraft:item.axe.strip";

CuttingBoard.addRecipeWithSound("peel_melon", <item:overweight_farming:seeded_peeled_melon>, <item:overweight_farming:vegetable_peels>,
	<item:minecraft:melon>, axes, stripSound);
CuttingBoard.addRecipeWithSound("melon_take_first_half_seeds", <item:overweight_farming:half_seeded_peeled_melon>, <item:minecraft:melon_seeds>,
	<item:overweight_farming:seeded_peeled_melon>, axes, stripSound);
CuttingBoard.addRecipeWithSound("melon_take_last_half_seeds", <item:overweight_farming:seedless_peeled_melon>, <item:minecraft:melon_seeds>,
	<item:overweight_farming:half_seeded_peeled_melon>, axes, stripSound);
CuttingBoard.addRecipeWithSound("peel_big_beetroot", <item:overweight_farming:peeled_overweight_beetroot_block>, <item:overweight_farming:vegetable_peels>,
	<item:overweight_farming:overweight_beetroot_block>, axes, stripSound);
CuttingBoard.addRecipeWithSound("peel_big_carrot", <item:overweight_farming:peeled_overweight_carrot_block>, <item:overweight_farming:vegetable_peels>,
	<item:overweight_farming:overweight_carrot_block>, axes, stripSound);
CuttingBoard.addRecipeWithSound("peel_big_potato", <item:overweight_farming:peeled_overweight_potato_block>, <item:overweight_farming:vegetable_peels>,
	<item:overweight_farming:overweight_potato_block>, axes, stripSound);
CuttingBoard.addRecipeWithSound("peel_big_onion", <item:overweight_farming:peeled_overweight_onion_block>, <item:overweight_farming:vegetable_peels>,
	<item:overweight_farming:overweight_onion_block>, axes, stripSound);

CuttingBoard.addRecipe("breakdown_beetroot", <item:minecraft:beetroot> * 10, <item:minecraft:beetroot_seeds> * 10,
	<item:overweight_farming:overweight_beetroot_block>, hoes);
CuttingBoard.addRecipe("breakdown_peeled_beetroot", <item:minecraft:beetroot> * 10, <item:minecraft:beetroot_seeds> * 10,
	<item:overweight_farming:peeled_overweight_beetroot_block>, hoes);
CuttingBoard.addRecipe("breakdown_carrot", <item:minecraft:carrot> * 10,
	<item:overweight_farming:overweight_carrot_block>, hoes);
CuttingBoard.addRecipe("breakdown_peeled_carrot", <item:minecraft:carrot> * 10,
	<item:overweight_farming:peeled_overweight_carrot_block>, hoes);
CuttingBoard.addRecipe("breakdown_potato", <item:minecraft:potato> * 10,
	<item:overweight_farming:overweight_potato_block>, hoes);
CuttingBoard.addRecipe("breakdown_peeled_potato", <item:minecraft:potato> * 10,
	<item:overweight_farming:peeled_overweight_potato_block>, hoes);
CuttingBoard.addRecipe("breakdown_onion", <item:farmersdelight:onion> * 10,
	<item:overweight_farming:overweight_onion_block>, hoes);
CuttingBoard.addRecipe("breakdown_peeled_onion", <item:farmersdelight:onion> * 10,
	<item:overweight_farming:peeled_overweight_onion_block>, hoes);
CuttingBoard.addRecipe("breakdown_cocoa", <item:minecraft:cocoa_beans> * 10,
	<item:overweight_farming:overweight_cocoa_block>, hoes);
CuttingBoard.addRecipe("breakdown_poisonous_potato", <item:minecraft:poisonous_potato> * 10,
	<item:overweight_farming:overweight_poisonous_potato_block>, hoes);
CuttingBoard.addRecipe("breakdown_baked_potato", <item:minecraft:baked_potato> * 10,
	<item:overweight_farming:overweight_baked_potato_block>, hoes);
CuttingBoard.addRecipe("breakdown_cabbage", <item:farmersdelight:cabbage> * 10, <item:farmersdelight:cabbage_seeds> * 10,
	<item:overweight_farming:overweight_cabbage_block>, hoes);

// Wild flax and tea cuts down

CuttingBoard.addRecipeWithOptional("cut_wild_flax", <item:supplementaries:flax_seeds>, <item:farmersdelight:straw>, 0.5,
	<item:supplementaries:wild_flax>, knives);
CuttingBoard.addRecipeWithOptional("cut_wild_tea", <item:farmersrespite:tea_seeds>, <item:farmersrespite:yellow_tea_leaves>, 0.5,
	<item:farmersrespite:wild_tea_bush>, knives);

// Compost from compost

craftingTable.addShapeless("apply_fullmetal_directly_to_compost",
	<item:farmersdelight:organic_compost> * 2,
	[<item:minecraft:dirt>, <item:overweight_farming:vegetable_compost>, <item:farmersdelight:straw>,
		<item:minecraft:bone_meal>, <item:farmersdelight:tree_bark>, <item:farmersdelight:tree_bark>]);
craftingTable.addShapeless("apply_violent_fullmetal_directly_to_compost",
	<item:farmersdelight:organic_compost> * 2,
	[<item:minecraft:dirt>, <item:overweight_farming:vegetable_compost>, <item:minecraft:rotten_flesh>,
		<item:farmersdelight:straw>, <item:minecraft:bone_meal>, <item:minecraft:bone_meal>]);

// Compostable chip

composter.setValue(<item:corn_delight:tortilla_chip>, 0.35);

// Feather beds, feather fuel

var feathers = <item:supplementaries:feather_block>;
feathers.setBurnTime(100);

craftingTable.addShaped("feather_bed",
	<item:minecraft:white_bed>,
	[[feathers, feathers, feathers],
	[planks, planks, planks]]);

// Craftable Name Tag
craftingTable.addShapeless("da_name_tagy", <item:minecraft:name_tag>, [antique_ink, paper, string_item]);

// Neapolitan Ice Cubes
CuttingBoard.addRecipeWithSound("ice_cubing", <item:neapolitan:ice_cubes> * 9, <item:minecraft:ice>, pickaxes, glassBreak);

//Harder Ender Eyes
craftingTable.remove(<item:minecraft:ender_eye>);
craftingTable.addShapeless("harder_ender_eyes",
	<item:minecraft:ender_eye>,
	[<item:minecraft:ender_pearl>, <item:minecraft:blaze_powder>, <item:minecraft:prismarine_crystals>,
		<item:minecraft:emerald>, <item:minecraft:amethyst_shard>, <item:minecraft:honeycomb>]);

// Propelplant Torch Recipe Fix
var propelpearl = <item:nethersdelight:propelpearl>;
var propelplant_cane = <item:nethersdelight:propelplant_cane>;
craftingTable.remove(<item:nethersdelight:propelplant_torch>);
craftingTable.addShaped("propelplant_torch",
	<item:nethersdelight:propelplant_torch>,
	[[propelpearl],
	[propelplant_cane]]);
	
//Mimicarnation and Soul Soil Remove
CuttingBoard.removeRecipe(<item:minecraft:crimson_fungus>);
CuttingBoard.removeRecipe(<item:minecraft:warped_fungus>);
