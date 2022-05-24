import 'package:khavchik/Data/models/food.dart';
import 'package:khavchik/Data/models/products.dart';

import 'models/ingridients.dart';

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
      Ingredient(name: flour.name, id: flour.id, quantity: "2 cups"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: "3 tablespoons"),
      Ingredient(
          name: bakingSoda.name, id: bakingSoda.id, quantity: "2 teaspoons"),
      Ingredient(name: salt.name, id: salt.id, quantity: "1/2 teaspoon"),
      Ingredient(name: egg.name, id: egg.id, quantity: "2 eggs"),
      Ingredient(name: milk.name, id: milk.id, quantity: "2 cups"),
      Ingredient(name: oil.name, id: oil.id, quantity: "4 tablespoons"),
      Ingredient(name: banana.name, id: banana.id, quantity: "4 bananas"),
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
      Ingredient(
          name: tomato.name, id: tomato.id, quantity: "Big juicy tomatoes -4"),
      Ingredient(name: onion.name, id: onion.id, quantity: "1 medium chopped"),
      Ingredient(
          name: garlic.name,
          id: garlic.id,
          quantity: "3 cloves finely chopped"),
      Ingredient(name: pepper.name, id: 12),
      Ingredient(name: butter.name, id: butter.id, quantity: "2-3 tsp"),
      Ingredient(name: cream.name, id: cream.id, quantity: "2 tsp"),
      Ingredient(name: bread.name, id: bread.id),
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
        Ingredient(name: potato.name, id: potato.id, quantity: "100 grams"),
        Ingredient(name: egg.name, id: egg.id, quantity: "5 eggs"),
        Ingredient(name: cheese.name, id: cheese.id, quantity: "100 grams"),
        Ingredient(name: sausage.name, id: sausage.id, quantity: "100 grams"),
        Ingredient(name: oil.name, id: oil.id),
        Ingredient(name: salt.name, id: salt.id),
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
      Ingredient(name: egg.name, id: egg.id, quantity: "4 eggs"),
      Ingredient(name: salt.name, id: salt.id, quantity: "1 tsp"),
      Ingredient(name: milk.name, id: milk.id, quantity: "300 ml"),
      Ingredient(name: flour.name, id: flour.id, quantity: "260-300 gram"),
      Ingredient(name: bakingSoda.name, id: bakingSoda.id, quantity: "10 gram"),
      Ingredient(name: cheese.name, id: cheese.id, quantity: "150 gram"),
      Ingredient(
          name: sausage.name, id: sausage.id, quantity: "100-150 gram boiled"),
      Ingredient(name: oil.name, id: oil.id, quantity: "30 ml"),
      Ingredient(name: tomato.name, id: tomato.id, quantity: "100 ml"),
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
      Ingredient(name: flour.name, id: flour.id, quantity: "175 gram"),
      Ingredient(name: water.name, id: water.id, quantity: "4-5 tsp"),
      Ingredient(name: salt.name, id: salt.id),
      Ingredient(name: butter.name, id: salt.id, quantity: "75 gram"),
      Ingredient(name: egg.name, id: egg.id, quantity: "2-3 eggs"),
      Ingredient(name: onion.name, id: onion.id, quantity: "1 onion"),
      Ingredient(
          name: sausage.name, id: sausage.id, quantity: "100 gram boiled"),
      Ingredient(
          name: shampinion.name, id: shampinion.id, quantity: "150 gram"),
      Ingredient(name: cream.name, id: cream.id, quantity: "50 ml"),
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
      Ingredient(
          name: rice.name, id: rice.id, quantity: "1 kg lazer type rice"),
      Ingredient(name: lamb.name, id: lamb.id, quantity: "1 kg"),
      Ingredient(name: carrot.name, id: carrot.id, quantity: "1 kg"),
      Ingredient(name: onion.name, id: onion.id, quantity: "500 gram"),
      Ingredient(name: oil.name, id: onion.id, quantity: "350 grams corn oil"),
      Ingredient(name: garlic.name, id: garlic.id, quantity: "2 heads"),
      Ingredient(
          name: chickpeas.name,
          id: chickpeas.id,
          quantity: "100 grams soaked chickpeas"),
      Ingredient(name: pepper.name, id: pepper.id, quantity: "1"),
      Ingredient(name: zira.name, id: zira.id),
      Ingredient(name: raisin.name, id: raisin.id, quantity: "2 tbs"),
      Ingredient(name: salt.name, id: salt.id),
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

  // Spring Salad

  FoodInfo(
    id: 7,
    prepTimeInMinutes: 35,
    levelOfDifficulty: 1,
    name: "Cheesecakes with dried fruits",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Ирода Алибекова",
    description:
        "Delicate cheesecakes with semolina and raisins, with a crispy crust, fried in a pan, will decorate any tea party. They are perfect for any family snack and breakfast.The approximate cost of the finished dish is 30,000 soums. *price is current at the time of publication of the recipe.",
    videoLink: "-5Vo9FGiA7o",
    imageLink:
        "https://zira.uz/wp-content/uploads/2022/03/syrniki-s-sukhofruktami-3.jpg",
    websiteLink:
        "https://zira.uz/ru/recipe/videorecept-syirniki-s-suhofruktami/",
    ingredient: [
      Ingredient(
          name: cottageCheese.name,
          id: cottageCheese.id,
          quantity: "400 grams of cottage cheese 9% or more"),
      Ingredient(name: egg.name, id: egg.id, quantity: "1 pcs"),
      Ingredient(name: semolina.name, id: semolina.id, quantity: "40 grams"),
      Ingredient(name: flour.name, id: flour.id, quantity: "50 grams"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: "50 grams"),
      Ingredient(name: vanilla.name, id: vanilla.id, quantity: "1 teaspoon"),
      Ingredient(name: oil.name, id: oil.id, quantity: "40 grams"),
      Ingredient(name: raisin.name, id: raisin.id, quantity: "35 grams"),
    ],
    negativeToIllnesses: [Illness("Diabetes")],
    servings: 4,
    instructions:
        "Step 1 \n\nMash cottage cheese until smooth. Step 2 \n\nAdd egg, sugar and mix thoroughly. Step 3 \n\nNext, add semolina and raisins. Stir and leave until the semolina swells for about 10 minutes. The dough will become more dense, as the semolina will absorb all the moisture. Step 4 \n\nThen add half of the flour to the dough and mix. Step 5 Sprinkle the table with flour, roll the sausage out of the dough. Divide the dough into equal parts depending on the desired size of the cheesecakes and roll them into balls. Step 6 \n\nHeat vegetable oil in a frying pan. Put the cheesecakes and fry on both sides, over low heat, until golden brown",
  ),

  FoodInfo(
    id: 8,
    prepTimeInMinutes: 20,
    levelOfDifficulty: 1,
    name: "Potato salad",
    authorsContact: "https://zira.uz/ru/author/irina/",
    authorsName: "Irina Salikhova",
    description:
        "Potato salad is easy to prepare and disappears from the plates in no time. It can easily replace a full dinner. It is affordable, satisfying and very fragrant!To prepare a salad, we recommend boiling potatoes in their skins. It is important not to overcook the potatoes: as soon as they can be easily pierced with a fork, you can remove the pan from the heat. It is best to peel potatoes while they are warm.",
    videoLink: "6AaNpznV1Sc",
    imageLink: "https://zira.uz/wp-content/uploads/2017/10/img_2044.jpg",
    websiteLink: "https://zira.uz/ru/recipe/kartofelnyiy-salat/",
    ingredient: [
      Ingredient(
          name: potato.name, id: potato.id, quantity: "500 grams of potato"),
      Ingredient(name: cilantro.name, id: cilantro.id, quantity: "1 bunch"),
      Ingredient(
          name: oil.name, id: oil.id, quantity: "2 tablespoon olive oil"),
      Ingredient(name: coriander.name, id: coriander.id, quantity: "a pinch "),
      Ingredient(name: pepper.name, id: pepper.id, quantity: "a pinch"),
      Ingredient(name: salt.name, id: salt.id, quantity: "to taste"),
    ],
    negativeToIllnesses: [],
    servings: 3,
    instructions:
        "Step 1 \n\nBoil potatoes with skins. Let the cooked potatoes cool slightly, peel and cut into medium cubes. Step 2 \n\nSeason the still warm potatoes with finely chopped cilantro, spices and olive oil. It can be served as a salad, or as a side dish for meat or fish.",
  ),

  FoodInfo(
    id: 9,
    prepTimeInMinutes: 40,
    levelOfDifficulty: 1,
    name: "KFC Wings",
    authorsContact: "https://zira.uz/ru/author/asal/",
    authorsName: "Asal Shukhratova",
    description:
        "Juicy chicken with amazing flavor and crispy skin. Chicken wings are obtained just like in the famous fast food chain.This recipe will allow you to get closer to the original taste of everyone's favorite wings at home. We do not encourage you to eat this every day, but sometimes you can, especially since it is so delicious!The approximate cost of the finished dish is 35,000 sum.*",
    videoLink: "Z3kGZd51N44",
    imageLink: "https://zira.uz/wp-content/uploads/2019/06/krilishki-kfc.jpg",
    websiteLink: "https://zira.uz/ru/recipe/kryilyishki-kak-kfc/",
    ingredient: [
      Ingredient(
          name: chickenWings.name,
          id: chickenWings.id,
          quantity: "12 chicken wings"),
      Ingredient(
          name: cornFlakes.name,
          id: cornFlakes.id,
          quantity: "150 grams of corn flakes"),
      Ingredient(
          name: chineseCabbage.name,
          id: chineseCabbage.id,
          quantity: "150 grams"),
      Ingredient(name: tomato.name, id: tomato.id, quantity: "1-2 pcs"),
      Ingredient(name: lavash.name, id: lavash.id, quantity: "1 large sheet"),
      Ingredient(name: cream.name, id: cream.id, quantity: "200 grams cream"),
      Ingredient(name: paprika.name, id: paprika.id, quantity: "1/2 teaspoon"),
      Ingredient(name: pepper.name, id: pepper.id, quantity: "to taste"),
      Ingredient(name: butter.name, id: butter.id, quantity: "20 grams"),
      Ingredient(name: cream.name, id: cream.id, quantity: "60 grams"),
      Ingredient(
          name: oil.name, id: oil.id, quantity: "Vegetable oil for frying"),
      Ingredient(name: flour.name, id: flour.id, quantity: "flour for rolling"),
    ],
    negativeToIllnesses: [],
    servings: 5,
    instructions:
        "Step 1 \n\nSeason the wings with salt and place in a bowl. Fill with water and put on fire. Step 2 \n\nBring the wings to a boil, remove the foam and remove from heat. Step 3 \n\nLeave the wings in the water in a saucepan to cool. Step 4 \n\nGrind corn flakes into fine crumbs. Add paprika, black pepper, garlic powder, dried dill and other spices as desired. Step 5 \n\nMix eggs, water, milk and salt. Step 6 \n\nRoll wings in flour, then in egg mixture and corn crumbs.",
  ),
  FoodInfo(
    id: 10,
    prepTimeInMinutes: 30,
    levelOfDifficulty: 1,
    name: "Potatoes with sour cream",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Iroda Alibekova",
    description:
        "We suggest you cook new potatoes with sour cream and herbs - a simple but very tasty dish . It can be served for both lunch and dinner. It is better to cook this dish at once. The approximate cost of the finished dish is 25,000 soums * price is current at the time of publication of the recipe.",
    videoLink: "p3w97kTfG5o",
    imageLink:
        "https://zira.uz/wp-content/uploads/2022/04/kartofel-so-smetanoy-1.jpg",
    websiteLink: "https://zira.uz/ru/recipe/kartofel-so-smetanoy/",
    ingredient: [
      Ingredient(name: potato.name, id: potato.id, quantity: "500 gramms"),
      Ingredient(
          name: driedDill.name, id: driedDill.id, quantity: "1 bunch dill"),
      Ingredient(
          name: cream.name, id: cream.id, quantity: "150 grams of sour cream"),
      Ingredient(name: garlic.name, id: garlic.id, quantity: "4 garlic gloves"),
      Ingredient(
          name: butter.name, id: butter.id, quantity: "50 grams of butter"),
      Ingredient(name: salt.name, id: salt.id, quantity: "1 teaspoon"),
      Ingredient(name: pepper.name, id: pepper.id, quantity: "1/2 teaspoon"),
    ],
    negativeToIllnesses: [],
    servings: 5,
    instructions:
        "Step 1 \n\nWash potatoes well and peel (if desired) from the skin. For quick cooking, you can cook potatoes in a pan. Step 2 \n\nWhile the potatoes are cooking, there is time to prepare the sour cream sauce. To do this, grind dill, garlic cloves and spices, mix everything with sour cream. Step 3 \n\nWhen the potatoes are ready, carefully drain the water. Add the butter to the pan and fry the potatoes over medium heat until golden brown, 5 minutes. Step 4 \n\nThen add sour cream sauce to the potatoes, mix, reduce the heat to the very minimum and simmer the potatoes, stirring constantly, for about 3 minutes.",
  ),
  FoodInfo(
    id: 11,
    prepTimeInMinutes: 30,
    levelOfDifficulty: 1,
    name: "Mini burger in lavash",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Iroda Alibekova",
    description:
        "There are a lot of burger options. And modern housewives are looking for quick recipes for such a dish. We offer to cook a delicious and juicy burger in pita bread. Preparing quickly, the filling can be taken at will. To prepare a burger in pita bread, you can take different sauces, including mustard. You can also add pickled red onion. Fantasize and delight your loved ones with delicious dishes! The approximate cost of the finished dish is 30,000 soums",
    videoLink: "ENkzNedPL1g",
    imageLink:
        "https://zira.uz/wp-content/uploads/2022/04/mini-burger-v-lavashe-1.jpg",
    websiteLink: "https://zira.uz/ru/recipe/mini-burger-v-lavashe/",
    ingredient: [
      Ingredient(name: lavash.name, id: lavash.id, quantity: "1 sheet"),
      Ingredient(name: beef.name, id: beef.id, quantity: "200 grams beef"),
      Ingredient(name: egg.name, id: egg.id, quantity: "1 yolk"),
      Ingredient(name: salt.name, id: salt.id, quantity: "0.5 teaspoon salt"),
      Ingredient(
          name: allspice.name,
          id: allspice.id,
          quantity: "0.5 teaspoon allspice"),
      Ingredient(
          name: cheddarCheese.name, id: cheddarCheese.id, quantity: "3 slices"),
      Ingredient(
          name: chips.name, id: chips.id, quantity: "4 pieces of any chips"),
      Ingredient(name: bulb.name, id: bulb.id, quantity: "1 bulb"),
      Ingredient(
          name: oil.name, id: oil.id, quantity: "40 milliliters vegetable oil"),
      Ingredient(
          name: mayonnaise.name, id: mayonnaise.id, quantity: "2 tablespoon"),
      Ingredient(name: ketchup.name, id: ketchup.id, quantity: "2 tablespoon"),
      Ingredient(name: paprika.name, id: paprika.id, quantity: "1 teaspoon"),
      Ingredient(name: salt.name, id: salt.id, quantity: "to taste"),
    ],
    negativeToIllnesses: [],
    servings: 1,
    instructions:
        "Step 1 \n\nIn a bowl, mix minced meat, yolk and spices. Form into flat, medium sized patties. Step 2 \n\nFry cutlets in well-heated oil for 2-3 minutes on each side. Step 3 \n\nThen in the oil from under the cutlets, fry the thinly sliced onion, about 3 minutes. Step 4 Prepare sauce \n\nIn a bowl, mix ketchup, mayonnaise and spices. Mix well. Step 5 \n\nPut the pita bread on the work surface and use a spoon to grease it with the sauce. Step 6 \n\nThen alternately lay out the cutlet, cheese and put fried onions and pieces of chips on the last layer of cheese. Step 7 \n\nThen close the top with a small circle of pita bread. Form a round shape. Step 8 \n\nFry the mini burger over medium heat on both sides.",
  ),
  FoodInfo(
    id: 12,
    prepTimeInMinutes: 30,
    levelOfDifficulty: 1,
    name: "Creamy chicken soup with rice",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Iroda Alibekova",
    description:
        "Delicious, tender, thick cream soup with chicken, rice and cream is a great option for an easy and satisfying first course that will appeal to the whole family and will not cause trouble in the kitchen. The approximate cost of the finished dish is 36,000 soums. * price is current at the time of publication of the recipe.",
    videoLink: "MIp7v4ScpKY",
    imageLink:
        "https://zira.uz/wp-content/uploads/2022/03/krem-sup-365-kun-8.jpg",
    websiteLink: "https://zira.uz/ru/recipe/krem-sup-kurinyiy-s-risom/",
    ingredient: [
      Ingredient(
          name: chickenFillet.name,
          id: chickenFillet.id,
          quantity: "200 grams of chicken fillet"),
      Ingredient(name: carrot.name, id: carrot.id, quantity: "1 pcs"),
      Ingredient(name: bulb.name, id: bulb.id, quantity: "1 pcs"),
      Ingredient(name: rice.name, id: rice.id, quantity: " 120 grams"),
      Ingredient(
          name: cream.name, id: cream.id, quantity: "200 ml cream 15-20 %"),
      Ingredient(name: flour.name, id: flour.id, quantity: "80 grams"),
      Ingredient(name: butter.name, id: butter.id, quantity: "50 grams"),
      Ingredient(name: salt.name, id: salt.id, quantity: "to taste"),
      Ingredient(
          name: allspice.name, id: allspice.id, quantity: "0.5 teaspoon"),
      Ingredient(name: water.name, id: water.id, quantity: "700 milliliters"),
    ],
    negativeToIllnesses: [],
    servings: 4,
    instructions:
        "Step 1 \n\nPrepare all ingredients. Step 2 \n\n Peel onions and carrots, wash, cut into large pieces. Step 3 \n\n Put the chicken cut into small pieces in a cauldron or deep saucepan, pour cold water over it. Step 4 \n\n Put on the fire, let it boil, reduce the heat, remove the foam that appeared during boiling. Step 5 \n\n Next to the pan, add vegetables, rice and spices. Step 6 \n\n Cook for 30 minutes after boiling under the lid over low heat. Step 7 \n\n Melt butter in a separate saucepan over low heat. Step 8 \n\n Add flour to butter and fry for 1 minute. Step 9 \n\n Then pour hot cream into the butter-flour mixture in a thin stream, in small portions, stirring constantly so that no lumps form. Bring to a boil and remove from heat. Step 10 \n\n Once the chicken and vegetables are ready, remove the soup from the heat, add the butter-cream mixture and purée it with an immersion blender until pureed.",
  ),
  FoodInfo(
    id: 13,
    prepTimeInMinutes: 20,
    levelOfDifficulty: 1,
    name: "Shakshuka",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Iroda Alibekova",
    description:
        "If you are tired of cooking classic scrambled eggs for breakfast, then we offer to diversify your diet with a delicious and simple Shakshuka recipe. Shakshuka is a spicy vegetable sauce stewed or baked with eggs. It is usually served for breakfast, ideally with pita. The approximate cost of the finished dish is 18,000 soums.",
    videoLink: "w15d44sEos0",
    imageLink: "https://zira.uz/wp-content/uploads/2022/02/shakshuka-13.jpg",
    websiteLink: "https://zira.uz/ru/recipe/shakshuka-2/",
    ingredient: [
      Ingredient(name: bulb.name, id: bulb.id, quantity: "1 pcs"),
      Ingredient(name: tomato.name, id: tomato.id, quantity: "2 pcs"),
      Ingredient(
          name: pepper.name, id: pepper.id, quantity: "1 red bell pepper"),
      Ingredient(
          name: tomatoPaste.name, id: tomatoPaste.id, quantity: "1 tablespoon"),
      Ingredient(name: egg.name, id: egg.id, quantity: "3 pcs"),
      Ingredient(name: garlic.name, id: garlic.id, quantity: "1 pcs"),
      Ingredient(name: parsley.name, id: parsley.id, quantity: "1 sprig "),
      Ingredient(name: oil.name, id: oil.id, quantity: "2 tablespoon"),
      Ingredient(name: salt.name, id: salt.id, quantity: "to taste"),
      Ingredient(name: paprika.name, id: paprika.id, quantity: "1 tablespoon"),
      Ingredient(name: pepper.name, id: pepper.id, quantity: "1 tablespoon"),
      Ingredient(
          name: coriander.name, id: coriander.id, quantity: "1 tablespoon"),
    ],
    negativeToIllnesses: [],
    servings: 2,
    instructions:
        "Step 1 \n\nPrepare all ingredients. Step 2 \n\n Peel onions and carrots, wash, cut into large pieces. Step 3 \n\n Put the chicken cut into small pieces in a cauldron or deep saucepan, pour cold water over it. Step 4 \n\n Put on the fire, let it boil, reduce the heat, remove the foam that appeared during boiling. Step 5 \n\n Next to the pan, add vegetables, rice and spices. Step 6 \n\n Cook for 30 minutes after boiling under the lid over low heat. Step 7 \n\n Melt butter in a separate saucepan over low heat. Step 8 \n\n Add flour to butter and fry for 1 minute. Step 9 \n\n Then pour hot cream into the butter-flour mixture in a thin stream, in small portions, stirring constantly so that no lumps form. Bring to a boil and remove from heat. Step 10 \n\n Once the chicken and vegetables are ready, remove the soup from the heat, add the butter-cream mixture and purée it with an immersion blender until pureed.",
  ),
  FoodInfo(
    id: 14,
    prepTimeInMinutes: 25,
    levelOfDifficulty: 1,
    name: "Cinnamon",
    authorsContact: "https://zira.uz/ru/author/iroda/",
    authorsName: "Iroda Alibekova",
    description:
        "Delicious and simple sweet breakfast prepared according to Gordon Ramsay's recipe. It takes only 15 minutes to create croutons. The dish turns out to be hearty, tasty, fragrant and incredibly refined in serving. At the same time, the ingredients for such croutons can be found in the refrigerator of every housewife. The approximate cost of the finished dish is 15,000 soums * price is current at the time of publication of the recipe.",
    videoLink: "yzItHF9QLUw",
    imageLink: "https://zira.uz/wp-content/uploads/2022/04/grenki.jpg",
    websiteLink:
        "https://zira.uz/ru/recipe/grenki-s-koricey-i-tushenyimi-yablokami/",
    ingredient: [
      Ingredient(
          name: bread.name,
          id: bread.id,
          quantity: "4 thick slices of stale white bread"),
      Ingredient(name: egg.name, id: egg.id, quantity: "2 pcs"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: "50 grams "),
      Ingredient(name: milk.name, id: milk.id, quantity: "150 milliliters"),
      Ingredient(name: vanilla.name, id: vanilla.id, quantity: "1 teaspoon"),
      Ingredient(name: cinnamon.name, id: cinnamon.id, quantity: "1 teaspoon"),
      Ingredient(name: butter.name, id: butter.id, quantity: "30 grams"),
      Ingredient(name: "For apples", id: 999, quantity: ""),
      Ingredient(name: apple.name, id: apple.id, quantity: "3 pcs"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: " 50 grams"),
      Ingredient(name: butter.name, id: butter.id, quantity: "25 grams"),
      Ingredient(
          name: water.name, id: water.id, quantity: "50 milliliters of water"),
    ],
    negativeToIllnesses: [],
    servings: 2,
    instructions:
        "Step 1 \n\ncook apples \n\n Over medium heat, melt the sugar in a small saucepan or saucepan. Twist but don't interfere. Step 2 \n\n Once sugar melts, add apples and butter, cook for 2 minutes. Then add water. Step 3 \n\n Bring to a boil and cook for 5-8 minutes over low heat. Step 4 \n\n Cook croutons \n\n In a bowl, mix eggs, milk, cinnamon and sugar. Dip each toast in the milk mixture, let it soak for about 2 minutes on each side. Step 5 \n\n Heat up the butter in a frying pan. Fry bread on both sides until crispy and golden brown. Step 6 \n\n Serve with apples sprinkled with a little powdered sugar. Bon appetit!",
  ),
  FoodInfo(
    id: 15,
    prepTimeInMinutes: 30,
    levelOfDifficulty: 1,
    name: "Lavash roll with chicken",
    authorsContact: "https://zira.uz/ru/author/nastya/",
    authorsName: "Anastasia Pulina",
    description:
        "Step 1 \n\nWash the chicken fillet, dry and cut off the films and excess fat. On both sides, rub the chicken breast with spices: salt, black pepper and sweet paprika. Step 2 \n\n Heat the butter in a frying pan, put the chicken fillet and cook over high heat for 3 minutes, then reduce the heat and turn the fillet on the other side. Cover the pan with a lid and cook the fillet for another 5-7 minutes, depending on its thickness. Step 3 \n\n Cool the fillet and cut it into thin slices. Step 4 \n\n Rinse the Chinese cabbage thoroughly, pat dry with paper towels and cut into thin strips. Step 5 \n\n Cut the tomato into thin rings. Step 6 \n\n Cut the lettuce leaf in half. Lubricate one sheet of pita bread with half of the cream cheese and cover with a second sheet, pressing it tightly. Step 7 \n\n Lubricate the top sheet of pita bread with the remaining cream cheese and put Beijing cabbage on it first, and then chicken breast and tomatoes. Step 8 \n\n Mix sour cream with mustard and pour half of the resulting sauce over the filling. Step 9 \n\n From the wide edge, tightly roll the pita bread into a tight roll. Wrap the roll in cling film or foil and refrigerate for at least 30 minutes.",
    videoLink: "UJi0fS1SxHg",
    imageLink: "https://zira.uz/wp-content/uploads/2018/02/kur-vrap-1.jpg",
    websiteLink: "https://zira.uz/ru/recipe/rulet-iz-lavasha-s-kuricey/",
    ingredient: [
      Ingredient(
          name: chickenFillet.name,
          id: chickenFillet.id,
          quantity: "250 grams of chicken fillet"),
      Ingredient(name: egg.name, id: egg.id, quantity: "2 pcs"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: "50 grams "),
      Ingredient(name: milk.name, id: milk.id, quantity: "150 milliliters"),
      Ingredient(name: vanilla.name, id: vanilla.id, quantity: "1 teaspoon"),
      Ingredient(name: cinnamon.name, id: cinnamon.id, quantity: "1 teaspoon"),
      Ingredient(name: butter.name, id: butter.id, quantity: "30 grams"),
      Ingredient(name: "For apples", id: 999, quantity: ""),
      Ingredient(name: apple.name, id: apple.id, quantity: "3 pcs"),
      Ingredient(name: sugar.name, id: sugar.id, quantity: " 50 grams"),
      Ingredient(name: butter.name, id: butter.id, quantity: "25 grams"),
      Ingredient(name: cream.name, id: cream.id, quantity: "50 grams"),
      Ingredient(name: mustard.name, id: mustard.id, quantity: "1.5 teaspoon"),
    ],
    negativeToIllnesses: [],
    servings: 4,
    instructions:
        "Step 1 \n\nWash the chicken fillet, dry and cut off the films and excess fat. On both sides, rub the chicken breast with spices: salt, black pepper and sweet paprika. Step 2 \n\n Heat the butter in a frying pan, put the chicken fillet and cook over high heat for 3 minutes, then reduce the heat and turn the fillet on the other side. Cover the pan with a lid and cook the fillet for another 5-7 minutes, depending on its thickness. Step 3 \n\n Cool the fillet and cut it into thin slices. Step 4 \n\n Rinse the Chinese cabbage thoroughly, pat dry with paper towels and cut into thin strips. Step 5 \n\n Cut the tomato into thin rings. Step 6 \n\n Cut the lettuce leaf in half. Lubricate one sheet of pita bread with half of the cream cheese and cover with a second sheet, pressing it tightly. Step 7 \n\n Lubricate the top sheet of pita bread with the remaining cream cheese and put Beijing cabbage on it first, and then chicken breast and tomatoes. Step 8 \n\n Mix sour cream with mustard and pour half of the resulting sauce over the filling. Step 9 \n\n From the wide edge, tightly roll the pita bread into a tight roll. Wrap the roll in cling film or foil and refrigerate for at least 30 minutes.",
  ),
];

var water = Ingredient(name: "water", id: 0);
var flour = Ingredient(name: "flour", id: 1);
var sugar = Ingredient(name: "sugar", id: 2);
var bakingSoda = Ingredient(name: "baking soda", id: 3);
var salt = Ingredient(name: "Salt", id: 4);
var egg = Ingredient(name: "egg", id: 5);
var milk = Ingredient(name: "milk", id: 6);
var cornOil = Ingredient(name: "corn oil", id: 7);
var banana = Ingredient(name: "banana", id: 8);
var tomato = Ingredient(name: "tomatoes", id: 9);
var onion = Ingredient(name: "onion", id: 10);
var garlic = Ingredient(name: "garlic", id: 11);
var pepperPowder = Ingredient(name: "pepper powder and salt to taste", id: 12);
var butter = Ingredient(name: "butter", id: 13);
var cream = Ingredient(name: "Cream", id: 14);
var bread = Ingredient(name: "bread", id: 15);
var potato = Ingredient(name: "potato", id: 16);
var cheese = Ingredient(name: "cheese", id: 17);
var sausage = Ingredient(name: "sausage", id: 18);
var oil = Ingredient(name: "oil", id: 19);
var shampinion = Ingredient(name: "Shampinion", id: 20);
var rice = Ingredient(name: "rice", id: 21);
var lamb = Ingredient(name: "lamb meat", id: 22);
var carrot = Ingredient(name: "carrot", id: 23);
var raisin = Ingredient(name: "raisin", id: 24);
var chickpeas = Ingredient(name: "chickpeas", id: 25);
var zira = Ingredient(name: "zira", id: 26);
var pepper = Ingredient(name: "pepper", id: 27);
var cottageCheese = Ingredient(name: "cottage cheese", id: 28);
var semolina = Ingredient(name: "semolina", id: 29);
var vanilla = Ingredient(name: "vanilla", id: 30);
var cilantro = Ingredient(name: "cilantro", id: 31);
var coriander = Ingredient(name: "coriander", id: 32);
var chickenWings = Ingredient(name: "chicken wings", id: 33);
var cornFlakes = Ingredient(name: "corn flakes", id: 34);
var paprika = Ingredient(name: "paprika", id: 35);
var driedDill = Ingredient(name: "Dried Dill", id: 36);
var lavash = Ingredient(name: "lavash", id: 37);
var beef = Ingredient(name: "beef", id: 38);
var allspice = Ingredient(name: "allspice", id: 39);
var cheddarCheese = Ingredient(name: "Cheddar Cheese", id: 40);
var chips = Ingredient(name: "chips", id: 41);
var bulb = Ingredient(name: "bulb", id: 42);
var mayonnaise = Ingredient(name: "mayonnaise", id: 43);
var ketchup = Ingredient(name: "ketchup", id: 44);
var chickenFillet = Ingredient(name: " chicken fillet", id: 45);
var tomatoPaste = Ingredient(name: " tomato paste", id: 46);
var parsley = Ingredient(name: "parsley", id: 47);
var cinnamon = Ingredient(name: "cinnamon", id: 48);
var apple = Ingredient(name: "apple", id: 49);
var chineseCabbage = Ingredient(name: "Chinese Cabbage", id: 50);
var mustard = Ingredient(name: "Mustard", id: 51);

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
