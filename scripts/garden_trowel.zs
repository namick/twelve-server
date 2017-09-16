import crafttweaker.item.IItemStack;

print("*********************************************");
print("Work around conflicting trowel recipe. (Conflicted with Chisel.)");
print("*********************************************");

var trowel as IItemStack;
var iron as IItemStack;
var stick as IItemStack;
var dirt as IItemStack;

trowel = <waterstrainer:garden_trowel>;
iron = <minecraft:iron_ingot>;
stick = <minecraft:stick>;
dirt = <minecraft:dirt>;

recipes.removeShaped(
    trowel, [
        [null, iron],
        [stick, null]
    ]
);

recipes.addShaped("Garden Trowel",
    trowel, [
        [null, null, dirt],
        [null, iron, null],
        [stick, null, null]
    ]
);

// TODO: Add tool tip?
// tool tip
//Garden Trowel
//[heart] 4.5 / 1
//Has a chance to drop Bait by digging Dirt.
//-----
