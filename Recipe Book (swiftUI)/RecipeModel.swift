//
//  RecipeModel.swift
//  Recipe Book (swiftUI)
//
//  Created by Roman Chervonyak on 04.02.2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case appetizer = "Appetizer"
    case main = "Main"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingridients: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "\n\nRigatoni With Fennel and Anchovies",
            image: "https://assets.bonappetit.com/photos/5e6bb3bd97812f0008bb8bf5/1:1/w_2240,c_limit/0420-Pasta-Rigatoni-With-Fennel-Anchovies.jpg",
            description: "Something truly magical happens when fennel, garlic, and anchovies get caramelized together in olive oil, then paired with citrus zest. Even the firmest anchovy haters will agree. This recipe is from Evan Funke, chef-owner of L.A.’s pasta temple, Felix Trattoria.",
            ingridients: "4 servings\n3 large fennel bulbs (about 2½ lb.)\n½ cup extra-virgin olive oil\n6oil-packed anchovy fillets\n6 garlic cloves, thinly sliced\n½ tsp. crushed red pepper flakes\n½ cup (packed) mint leaves, plus more torn for serving\n1 orange or tangerine\n1 lemon\n1 lb. rigatoni\n3 oz. Pecorino Romano, finely grated (about 1½ cups)",
            category: "Main",
            datePublished: "2020-03-07",
            url: "https://www.bonappetit.com/recipe/rigatoni-with-fennel-and-anchovies"),
        Recipe(
            name: "\n\nBA's Best Spaghetti and Meatballs",
            image: "https://assets.bonappetit.com/photos/59bbfb9f6375992e505c1bd3/1:1/w_2240,c_limit/classic-spaghetti-and-meatballs.jpg",
            description: "Saying these are better than our nonna’s would be a bad idea, but she’ll never know if we just think it…",
            ingridients: "TOMATO SAUCE\n¼ cup olive oil\n6 garlic cloves, thinly sliced\n2 sprigs basil\n2 28-ounce cans whole peeled tomatoes\nKosher salt, freshly ground pepper",
            category: "Main",
            datePublished: "2017-09-19",
            url: "https://www.bonappetit.com/recipe/classic-spaghetti-and-meatballs"),
        Recipe(
            name: "Rigatoni with \nEasy Vodka Sauce",
            image: "https://assets.bonappetit.com/photos/5a8da4996497380283798c16/16:9/w_2240,c_limit/rigatoni-with-vodka-sauce.jpg",
            description: "Before you convince yourself there's no way that a little onion, tomato paste, and cream can come together in mere minutes to make one of the best homemade pasta sauces you've ever had, hear us out. Better yet, make this recipe for yourself. Just try and use double-concentrated tomato paste, which packs more flavor than the standard stuff.",
            ingridients: "1 medium onion\n4 garlic cloves\n4 oz. Parmesan cheese\n2 Tbsp. extra-virgin olive oil, plus more for drizzling\n1 4.5-oz. tube double-concentrated tomato paste\n½ tsp. crushed red pepper flakes\n2 oz. vodka\n¾ cup heavy cream\n1 lb. rigatoni\nBasil leaves (for serving)",
            category: "Main",
            datePublished: "2018-2020-22",
            url: "https://www.bonappetit.com/recipe/rigatoni-with-easy-vodka-sauce"),
        Recipe(
            name: "\n\nCacio e Pepe",
            image: "https://assets.bonappetit.com/photos/57afff371b33404414976059/1:1/w_1280,c_limit/cacio-e-pepe.jpg",
            description: "Literally “cheese and pepper,” this minimalist cacio e pepe recipe is like a stripped-down mac and cheese.",
            ingridients: "2 servings\n6 oz. pasta (such as egg tagliolini, bucatini, or spaghetti)\n3 Tbsp. unsalted butter, cubed, divided\n1 tsp. freshly cracked black pepper\n¾ cup finely grated Grana Padano or Parmesan\n⅓ cup finely grated Pecorino",
            category: "Main",
            datePublished: "2010-04-10",
            url: "https://www.bonappetit.com/recipe/cacio-e-pepe"),
        Recipe(
            name: "Ultimate Caprese Salad",
            image: "https://assets.bonappetit.com/photos/596cdb0d7102712b68401ae0/master/w_1280,c_limit/ultimate-caprese-salad.jpg",
            description: "This is a dish to make when the tomatoes are peaking—at the farmers’ market, you should be able to smell them before you see them. The moment only comes around once a year, so make the most of it (which is to say, do very little with them). This is part of BA's Best, a collection of our essential recipes.",
            ingridients: "4 Servings\n1 pint mixed cherry tomatoes, preferably heirloom, halved\n7 tablespoons (or more) extra-virgin olive oil, divided\nFlaky sea salt\n2 pounds mixed medium and large tomatoes, preferably heirloom, cut into thin slices and/or wedges\n8 ounces buffalo mozzarella or mozzarella, room temperature, torn into pieces\nCoarsely ground black pepper\nSmall basil leaves and toasted country bread (for serving)",
            category: "Appetizer",
            datePublished: "2016-08-11",
            url: "https://www.bonappetit.com/recipe/ultimate-caprese-salad"),
        Recipe(
            name: "\nBrothy Pasta With Miso-Butter Turnips",
            image: "https://assets.bonappetit.com/photos/61f93ef93c17d5f529cd904d/1:1/w_1600,c_limit/Brothy%20Pasta%20With%20Miso-Butter%20Turnips.jpg",
            description: "“Turnips and their greens do not get enough love, in my opinion,” says chef Carla Hall. When simmered in butter and miso, delicate hakurei turnips turn tender and sweet, providing a perfect contrast to their peppery greens. Building on Hall’s Smoked Paprika and Sun-Dried Tomato Potlikker, this brothy pasta is hearty and warming without being too heavy. Making the Smoked Paprika and Sun-Dried Tomato Potlikker is a crucial first step here, so be sure to read through that recipe first.",
            ingridients: "6 Servings\n2 Tbsp. freeze-dried tomato flakes or tomato powder\n½ tsp. crushed red pepper flakes\n¼tsp. kosher salt, plus more\n2 bunches hakurei turnips (about 1½ lb. total), trimmed, greens reserved, cut into wedges\n4 Tbsp. unsalted butter\n1 Tbsp. sugar\n1 Tbsp. white miso\n1 lb. orecchiette\n1 quart Smoked Paprika and Sun-Dried Tomato Potlikker\nFreshly ground black pepper\nMicrogreens (optional) and shaved Pecorino Romano (for serving)",
            category: "Main",
            datePublished: "2022-02-08",
            url: "https://www.bonappetit.com/recipe/brothy-pasta-with-miso-butter-turnips"),
        Recipe(
            name: "\n\nChicken-Bacon Smash Burgers",
            image: "https://assets.bonappetit.com/photos/61f7eb50b7fba5e3be0da65d/1:1/w_1920,c_limit/20211207-0222-Smash-Burger-+-Web-Extras9030.jpg",
            description: "The chicken burgers from Ali Slagle’s cookbook I Dream of Dinner (So You Don’t Have To) have a little secret—they’re cooked in bacon fat, which adds flavor and moisture to the ground meat. And that’s not all: The chicken meatballs are smashed into a thin layer and topped with thinly sliced onion and jalapeño, yielding browned, juicy burgers juxtaposed with the sweetness and heat of the charred vegetables. Layer it all onto a toasty bun with the crispy bacon and as much ketchup as you please, then wonder how only a handful of ingredients brought such big flavor.",
            ingridients: "Makes 4\n1 lb. ground chicken\n2 tsp. vegetable oil\n4 hamburger buns\n8 bacon slices (not thick-cut), halved crosswise, divided\nKosher salt, freshly ground pepper\n1 small red onion, very thinly sliced, divided\n1 jalapeño, very thinly sliced, divided\nKetchup (for serving)",
            category: "Main",
            datePublished: "2022-02-03",
            url: "https://www.bonappetit.com/recipe/chicken-bacon-smash-burgers"),
        Recipe(
            name: "\n\nSkillet Cheesesteak With Broccoli Rabe",
            image: "https://assets.bonappetit.com/photos/61f82103bccddc88319220ef/1:1/w_1920,c_limit/20220113-0322-hot-+-fast2075-1.jpg",
            description: "Is there a better way to eat steak than under a melty layer of pepper Jack with lemony broccoli rabe? We think not! Pickled peppers are the secret star of this dish, lending acidity and just the right amount of heat to an otherwise rich one-skillet meal. (Don’t throw out the pickled pepper liquid—it makes a great addition to a vinaigrette or Bloody Mary.) The steak should be pretty rare when you shingle it over the vegetables, but don’t worry: After a few minutes under the broiler, it will be perfectly cooked.",
            ingridients: "4 servings\n1 lb. boneless New York strip steak, patted dry\nKosher salt, freshly ground pepper\n1 Tbsp. extra-virgin olive oil, plus more\n3 garlic cloves, thinly sliced\n1 bunch broccoli rabe (about 1 lb.), cut into 1–2 pieces\n⅓ cup thinly sliced drained Peppadew peppers in brine\n2 tsp. finely grated lemon zest\n3 oz. pepper Jack, coarsely grated\n1 Tbsp. fresh lemon juice",
            category: "Main",
            datePublished: "2022-01-07",
            url: "https://www.bonappetit.com/recipe/skillet-cheesesteak-with-broccoli-rabe")
    ]
}
