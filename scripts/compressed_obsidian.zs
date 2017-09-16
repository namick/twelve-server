import crafttweaker.item.IItemStack;

print("*********************************************");
print("Importing missing compressed obsidian recipe.");
print("*********************************************");

var obsidian as IItemStack;
var compressed_obsidian as IItemStack;

obsidian = <minecraft:obsidian>;
compressed_obsidian = <armorplus:compressed_obsidian>;

recipes.addShaped("Compressed obsidian from obsidian",
    compressed_obsidian, [
    [obsidian, obsidian, obsidian],
    [obsidian, obsidian, obsidian],
    [obsidian, obsidian, obsidian]
]);

recipes.addShapeless("Obsidian from compressed obsidian",
    obsidian * 9,
    [compressed_obsidian]
);