import 'package:khavchik/Data/models/food.dart';
import 'package:khavchik/Data/models/ingridients.dart';
import 'package:khavchik/Data/models/products.dart';

List<FoodInfo> top35Meals = [
  //Banana pancakes
  FoodInfo(
    id: 1,
    prepTimeInMinutes: 19,
    levelOfDifficulty: 0,
    name: "BANANA PANCAKES",
    authorsContact: "https://recipesfoodandcooking.com/author/mary-ellen/",
    authorsName: "Mary Ellen",
    description:
        "Wake up on the right side of the bed with a stack of sweet, cozy, and simple banana pancakes. This top-rated banana pancake recipe is easy to make and it comes together in just 15 minutes, so you don't have to wake up early to enjoy a satisfying breakfast. Learn how to make, store, and serve the best banana pancakes ever. ",
    videoLink: "kY-d4rRPcUk",
    imageLink:
        "https://recipesfoodandcooking.com/wp-content/uploads/2015/07/banana-pancakes-f.jpg",
    websiteLink:
        "https://recipesfoodandcooking.com/2015/07/30/banana-pancakes/",
    ingredient: [
      Ingredient(name: "tomatoes", id: 1, quantity: "2 cups"),
      Ingredient(name: "sugar", id: 2, quantity: "3 tablespoons"),
      Ingredient(name: "baking soda", id: 3, quantity: "2 teaspoons"),
      Ingredient(name: "salt", id: 4, quantity: "1/2 teaspoon"),
      Ingredient(name: "egg", id: 5, quantity: "2 eggs"),
      Ingredient(name: "milk", id: 6, quantity: "2 cups"),
      Ingredient(name: "oil", id: 7, quantity: "4 tablespoons"),
      Ingredient(name: "banana", id: 8, quantity: "4 bananas"),
    ],
    negativeToIllnesses: [
      Illness("Diabetes"),
    ],
    servings: 3,
    instructions:
        "1.Add the flour, sugar, baking soda and salt. Mix together.\n\n2.Mash the bananas, leave a few pieces in chunks.\n\n3.Add the eggs, milk and oil. Mix until thoroughly mixed in, Add the bananas. Mix well.\n\nPour batter onto a griddle a little over 1/2 cup per pancake. Cook until bubbles start to form on the pancake surface. Flip and cook for another 2 minutes or until center is cooked thoroughly.",
  ),
  //Tomato soup
  FoodInfo(
    id: 2,
    prepTimeInMinutes: 30,
    levelOfDifficulty: 1,
    name: "Creamy Tomato Soup",
    authorsContact: "https://www.padhuskitchen.com/author/padhusankar",
    authorsName: "Padhu SanKar",
    description:
        "Tomato soup is a soup prepared with tomatoes as the main ingredient. This rich and creamy restaurant style tomato soup is easy to make at home and tastes super delicious.It is also economical and free of any preservatives.This is my family’s favourite soup, so I prepare it frequently. I do not like buying ready made soup packets and always prefer to prepare it at home with fresh ingredients. This is very simple and easy to prepare and also a very common soup. I simply adore this soup for its flavor. A bowl of steaming hot homemade soup topped with cream is one of the most comforting food.",
    videoLink: "NGFJxkFRcr0",
    imageLink:
        "https://www.padhuskitchen.com/wp-content/uploads/2010/06/tomatosoup1.jpg",
    websiteLink:
        "https://www.padhuskitchen.com/2010/06/tomato-soup-recipe.html",
    ingredient: [
      Ingredient(name: "tomatoes", id: 3, quantity: "Big juicy tomatoes -4"),
      Ingredient(name: "onion", id: 10, quantity: "1 medium chopped"),
      Ingredient(name: "garlic", id: 11, quantity: "3 cloves finely chopped"),
      Ingredient(name: "pepper powder and salt to taste", id: 12),
      Ingredient(name: "butter", id: 13, quantity: "2-3 tsp"),
      Ingredient(name: "cream", id: 14, quantity: "2 tsp"),
      Ingredient(name: "bread", id: 15),
    ],
    negativeToIllnesses: [],
    servings: 2,
    instructions:
        "Heat butter in a pan,fry garlic and onions.Add chopped tomatoes,\n\n1 cup of water, salt and pressure cook for 1 whistle.\n\n2.After it cools, puree it in a blender.\n\n3.Strain the blended mixture in a soup strainer to remove seeds and skin.\n\n4.Melt a little butter in a pan, add maida to it and cook for a few seconds on low flame. Keep stirring. Maida is added to thicken the soup.\n\n5.Now add the blended mixture gradually to the above while constantly stirring the maida. (This is done to prevent formation of lumps)\n\n6.Reheat the soup, check for salt. Add needed pepper powder and cream (if using).\n\n7.Serve hot topped with more pepper powder, fresh cream and fried bread croutons.Enjoy a bowl of hot steaming homemade soup!",
  ),
  // Potato Omelet
  FoodInfo(
      id: 3,
      prepTimeInMinutes: 30,
      levelOfDifficulty: 1,
      name: "Potato Omelet",
      authorsContact: "https://zira.uz/ru/recipe/kartofelnyiy-omlet/",
      authorsName: "Фарангиз Максумжонова",
      description:
          "Breakfast is the first meal of the day. It not only gives a boost of energy, but also creates a mood. Today we will show you how to make a potato omelet. This is perhaps the perfect breakfast dish - tender, quick to prepare, satisfying and nutritious. If you are tired of the traditional omelet for breakfast, add potatoes, cheese to it, and the taste of the usual dish will become new. This dish will not leave anyone indifferent. The approximate cost of the finished dish is 21,000 soums",
      videoLink: "xHHnyoWpCHQ",
      imageLink:
          "https://zira.uz/wp-content/uploads/2021/07/kartofelnyy-omlet.jpg",
      websiteLink: "https://zira.uz/ru/recipe/kartofelnyiy-omlet/",
      ingredient: [
        Ingredient(name: "potato", id: 16, quantity: "100 grams"),
        Ingredient(name: "egg", id: 5, quantity: "5 eggs"),
        Ingredient(name: "cheese", id: 17, quantity: "100 grams"),
        Ingredient(name: "sausage", id: 18, quantity: "100 grams"),
        Ingredient(name: "oil", id: 19),
        Ingredient(name: "salt", id: 4),
      ],
      negativeToIllnesses: [],
      servings: 3,
      instructions:
          "Step 1\n\nCut potatoes and sausage into thin slices.\n\nStep 2\n\nCheese grate on a coarse grater.\n\nStep 3\n\nIn a deep bowl with a whisk until smooth, mix the eggs with salt.\n\nStep 4\n\nPour vegetable oil into a heated frying pan.\n\nStep 5\n\nAdd potatoes, fry on both sides until golden brown over medium heat. You can sprinkle with salt if you like."),
  // Breakfast pie
  FoodInfo(
    id: 4,
    prepTimeInMinutes: 40,
    levelOfDifficulty: 1,
    name: "Breakfast pie",
    authorsContact: "https://zira.uz/ru/author/yodgorbek/",
    authorsName: "Yodgorbek Abdurahmonov",
    description:
        "This quick pie is convenient to prepare for breakfast, it takes a little time, but it turns out very tasty. An excellent version of a simple, but very satisfying pie from the category, mixed everything in the oven. Products for its preparation are sure to be found in every home. By the way, you can add something new, based on your taste. The approximate cost of the finished dish is 30,000 sum.* *price is current at the time of publication of the recipe.",
    videoLink: "25_cBXNhMdo",
    imageLink:
        "https://zira.uz/wp-content/uploads/2021/02/zalivnoi---pirog-k-zavtraku-5.jpg",
    websiteLink: "https://zira.uz/ru/recipe/byistryiy-pirog-k-zavtraku/",
    ingredient: [
      Ingredient(name: "egg", id: 5, quantity: "4 eggs"),
      Ingredient(name: "salt", id: 4, quantity: "1 tsp"),
      Ingredient(name: "milk", id: 6, quantity: "300 ml"),
      Ingredient(name: "flour", id: 1, quantity: "260-300 gram"),
      Ingredient(name: "baking soda", id: 3, quantity: "10 gram"),
      Ingredient(name: "cheese", id: 17, quantity: "150 gram"),
      Ingredient(name: "sausage", id: 18, quantity: "100-150 gram boiled"),
      Ingredient(name: "oil", id: 19, quantity: "30 ml"),
      Ingredient(name: "tomato", id: 9, quantity: "100 ml"),
    ],
    negativeToIllnesses: [],
    servings: 4,
    instructions:
        "Step 1 Pour eggs into a bowl, add salt, milk, mix.\n\nStep 2 Pour in vegetable oil. Then add the sifted flour and baking powder, mix.\n\nStep 3 Prepare the filling. Cut the sausage and tomatoes into small cubes. Grate the cheese.\n\nStep 4 Cut the onion into cubes and fry until golden brown with a little vegetable oil. Chop the greens.\n\nStep 5 Add the filling, salt, pepper, mix. Pour the resulting mass into a mold measuring 25 by 25 centimeters. Bake for 25-30 minutes at a temperature of 180 C. Cut into pieces and serve.",
  ),
  // Sand Galate
  FoodInfo(
    id: 5,
    prepTimeInMinutes: 60,
    levelOfDifficulty: 1,
    name: "Sand Galete",
    authorsContact: "https://zira.uz/ru/author/nastya/",
    authorsName: "Анастасия Пулина",
    description:
        "Today we want to introduce you to a variant of breakfast biscuits, which turned out to be unexpectedly tasty and elegant!Tip: if you prepare the dough and filling in the evening, then the cooking time is reduced by half!The approximate cost of the finished dish is 18,000 sum.* *price is current at the time of publication of the recipe.",
    videoLink: "E5Qp-MpUuuQ",
    imageLink: "https://zira.uz/wp-content/uploads/2019/01/galeta-lg-3.jpg",
    websiteLink:
        "https://zira.uz/ru/recipe/videorecept-pesochnaya-galeta-k-zavtraku/",
    ingredient: [
      Ingredient(name: "flour", id: 1, quantity: "175 gram"),
      Ingredient(name: "water", id: 0, quantity: "4-5 tsp"),
      Ingredient(name: "salt", id: 4),
      Ingredient(name: "butter", id: 13, quantity: "75 gram"),
      Ingredient(name: "egg", id: 5, quantity: "2-3 eggs"),
      Ingredient(name: "onion", id: 10, quantity: "1 onion"),
      Ingredient(name: "sausage", id: 18, quantity: "100 gram boiled"),
      Ingredient(name: "Shampinion", id: 20, quantity: "150 gram"),
      Ingredient(name: "Cream", id: 14, quantity: "50 ml"),
    ],
    negativeToIllnesses: [],
    servings: 2,
    instructions:
        "Step 1\n\nGrind flour with salt and cold butter into crumbs.\n\nStep 2\n\nPour in ice water (4-5 tablespoons) and quickly roll the dough into a ball. Send for 20-30 minutes in the refrigerator.\n\nStep 3\n\nFor filling. Peel the onion and cut into half rings, ham into strips, and wash the mushrooms and cut into small slices.\n\nStep 4\n\nFirst, fry the onion until golden brown. Then add ham and mushrooms. Fry everything for 5-7 minutes.\n\nStep 5\n\nAt the end, add the cream, mix well, salt, pepper and remove from the stove. Let the filling cool down. Step 6 Divide the dough into 2-3 servings. On a floured work surface, roll each piece of dough into a 0.5cm thick sheet. Place the filling in the center of each biscuit.\n\nStep 7\n\nForm a biscuit and transfer it to a baking sheet covered with parchment, grease the edges of the dough with yolk. Step 8 Bake at 180°C for 5-7 minutes. We baked in the LG NeoChef (MJ3965AIS) microwave oven in the \"Convection\" mode.\n\nStep 9\n\nThen take out the biscuits and beat an egg into each, salt and pepper to taste. And again bake for 10-12 minutes at 170-180 C! Serve the finished biscuit immediately to the table. Bon appetit!",
  ),

  // Plov
  FoodInfo(
    id: 6,
    prepTimeInMinutes: 90,
    levelOfDifficulty: 3,
    name: "Tashkent Plov",
    authorsContact: "https://zira.uz/ru/author/nastya/",
    authorsName: "Анастасия Пулина",
    description:
        "Plov is perhaps one of the most delicious dishes of our cuisine. Not a single event can do without pilaf, so every housewife should be able to cook it. And we will share our little secret of making Tashkent pilaf. The approximate cost of the finished dish is 85,000 sum.* *price is current at the time of publication of the recipe.",
    videoLink: "_xZgPgjQvkc",
    imageLink:
        "https://zira.uz/wp-content/uploads/2019/09/plov-golden-corn-2-1.jpg",
    websiteLink: "https://zira.uz/ru/recipe/tashkentskiy-plov/",
    ingredient: [
      Ingredient(name: "rice", id: 21, quantity: "1 kg lazer type rice"),
      Ingredient(name: "lamb meat", id: 22, quantity: "1 kg"),
      Ingredient(name: "carrot", id: 23, quantity: "1 kg"),
      Ingredient(name: "onion", id: 10, quantity: "500 gram"),
      Ingredient(name: "oil", id: 7, quantity: "350 grams corn oil"),
      Ingredient(name: "garlic", id: 24, quantity: "2 heads"),
      Ingredient(
          name: "chickpeas", id: 25, quantity: "100 grams soaked chickpeas"),
      Ingredient(name: "pepper", id: 12, quantity: "1"),
      Ingredient(name: "zira", id: 26),
      Ingredient(name: "raisin", id: 20, quantity: "2 tbs"),
      Ingredient(name: "Salt", id: 4),
    ],
    negativeToIllnesses: [
      Illness(
        "High blood pressure",
      )
    ],
    servings: 8,
    instructions:
        "Step 1\n\nPrepare products. Cut the carrots into long strips 5x5 mm thick, chop the onion into thin half rings, cut the meat into large pieces (divide 1 kilogram into 5-6 pieces).\n\nStep 2\n\nHeat vegetable oil well in a cauldron. Tip: We recommend using corn oil for cooking pilaf, as it has a lot of advantages. It is well suited for frying, as it does not foam, does not form carcinogens, does not burn and has a high smoke point, that is, it begins to burn only at very high temperatures. When frying in such oil, the meat acquires a golden crust and remains very juicy inside. And also corn oil has absolutely no foreign smell.\n\nStep 3\n\nWhen the oil is hot enough in it, you need to fry the pieces of meat until golden brown. Then add the onion and also fry with the meat until it turns golden.\n\nStep 4\n\nAdd chopped carrots to the onion and meat, fry until soft, stirring gently so that nothing burns.\n\nStep 5\n\nPour vegetables and meat with one liter of hot water, add 2 tablespoons of salt. Add soaked chickpeas and 2 cloves of garlic. Stir, let it boil, then reduce the heat and let the zirvak boil for 40-50 minutes under a closed lid.\n\nStep 6\n\nRinse the rice and soak it in cold water for 20 minutes. Step 7 When zirvak is ready, add zira, pepper, raisins - mix. Put rice on the surface of the zirvak, smooth it. Add hot water so that it covers the rice by the thickness of the little finger. Increase the fire, wait until all the water has boiled away and then reduce the fire to a minimum. Collect rice with a slotted spoon into a mound, make 5-6 holes in the formed hill with a knife to the bottom of the cauldron. Close the lid tightly and leave for 20 minutes.\n\nStep 8\n\nAfter 20 minutes, remove the pilaf from the heat, stir and leave for another 10 minutes, covered with a lid. Then take out the meat, cut it into portions. Transfer the pilaf to the lagan, put the pieces of meat on top. Serve with fresh salad and hot tea. Bon appetit!",
  ),
  //
];

// Products:
//water = 0
// flour = id 1
// sugar = id 2
// baking soda = id 3
// salt = id 4
// egg  = id 5
// milk  = id 6
// oil  = id 7
// banana  = id 8
// tomato  = id 9
// onion  = id 10
// garlic  = id 11
// pepper powder  = id 12
// butter  = id 13
// cream  = id 14
// bread  = id 15
// Ingredient(name: "potato", id: 16, quantity: "100 grams"),
//         Ingredient(name: "cheese", id: 17, quantity: "100 grams"),
//         Ingredient(name: "sausage", id: 18, quantity: "100 grams"),
//         Ingredient(name: "oil", id: 19 ),
//         Ingredient(name: "Shampinio", id: 20 ),
// Ingredient(name: "rice", id: 21, quantity: "1 kg lazer type rice"),
// Ingredient(name: "lamb meat", id: 22, quantity: "1 kg"),

//almond
// apple
// baking soda
// banana
// beef roast
// beef sausage
// beef steak
// bread
// butter
// carrot
// cream
// egg
// flour
// garlic
// honey
// milk
// olive oil
// peanut butter
// potato
// sausage
// sugar
// tomato
// vegetable oil

//int? id,
// int? prepTimeInMinutes,
// int? levelOfDifficulty,
// String? name,
// String? authorsContact,
// String? description,
// String? nutritionFacts,
// String? videoLink,
// String? websiteLink,
// List ? ingredient,
// List ? negativeToIllnesses,
// int? servings,

// })
