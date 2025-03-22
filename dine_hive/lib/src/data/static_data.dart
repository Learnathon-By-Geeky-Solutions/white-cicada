import 'models/food_model.dart';
import 'models/restaurent_model.dart';

List<RestaurantModel> restaurantList = [
  RestaurantModel(
    sId: "1",
    restaurantName: "The Gourmet Hub",
    restaurantCode: 101,
    restaurantDescription:
        "A fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\nA fine dining experience with international cuisine.\n",
    img: "https://example.com/gourmet_hub.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: [
      "Grilled Salmon",
      "Beef Wellington",
      "Truffle Pasta",
      "Lobster Bisque"
    ],
    ratings: [2.8, 2.7, 2.9, 3.0, 2.6],
    orderQty: 120,
  ),
  RestaurantModel(
    sId: "2",
    restaurantName: "Spice Symphony",
    restaurantCode: 102,
    restaurantDescription: "Authentic Indian flavors with a modern twist.",
    img: "https://example.com/spice_symphony.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4", "T5"],
    listOfFood: ["Butter Chicken", "Paneer Tikka", "Biryani", "Dal Makhani"],
    ratings: [4.6, 4.5, 4.8, 4.7, 4.9],
    orderQty: 98,
  ),
  RestaurantModel(
    sId: "3",
    restaurantName: "Ocean Breeze Diner",
    restaurantCode: 103,
    restaurantDescription: "Seafood specialties with a stunning ocean view.",
    img: "https://example.com/ocean_breeze.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2"],
    listOfFood: [
      "Grilled Lobster",
      "Shrimp Scampi",
      "Fish Tacos",
      "Seafood Paella"
    ],
    ratings: [4.3, 4.2, 4.5, 4.6, 4.4],
    orderQty: 67,
  ),
  RestaurantModel(
    sId: "4",
    restaurantName: "Mountain View Café",
    restaurantCode: 104,
    restaurantDescription: "Cozy café with organic coffee and fresh bakery.",
    img: "https://example.com/mountain_cafe.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Cappuccino",
      "Blueberry Muffin",
      "Avocado Toast",
      "Carrot Cake"
    ],
    ratings: [4.7, 4.8, 4.6, 4.5, 4.9],
    orderQty: 85,
  ),
  RestaurantModel(
    sId: "5",
    restaurantName: "Urban Grill",
    restaurantCode: 105,
    restaurantDescription: "Modern steakhouse with handcrafted cocktails.",
    img: "https://example.com/urban_grill.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4", "T5", "T6"],
    listOfFood: ["T-Bone Steak", "BBQ Ribs", "Grilled Chicken", "Caesar Salad"],
    ratings: [4.5, 4.6, 4.4, 4.3, 4.7],
    orderQty: 132,
  ),
  RestaurantModel(
    sId: "6",
    restaurantName: "Sunset Pizzeria",
    restaurantCode: 106,
    restaurantDescription: "Wood-fired pizzas with fresh organic ingredients.",
    img: "https://example.com/sunset_pizzeria.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: [
      "Margherita Pizza",
      "Pepperoni Pizza",
      "BBQ Chicken Pizza",
      "Four Cheese Pizza"
    ],
    ratings: [4.3, 4.5, 4.4, 4.6, 4.2],
    orderQty: 74,
  ),
  RestaurantModel(
    sId: "7",
    restaurantName: "Royal Thai",
    restaurantCode: 107,
    restaurantDescription: "Traditional Thai food with a luxurious ambiance.",
    img: "https://example.com/royal_thai.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4", "T5", "T6"],
    listOfFood: [
      "Pad Thai",
      "Green Curry",
      "Tom Yum Soup",
      "Mango Sticky Rice"
    ],
    ratings: [4.8, 4.9, 4.7, 4.8, 4.9],
    orderQty: 105,
  ),
  RestaurantModel(
    sId: "8",
    restaurantName: "Green Leaf Vegan",
    restaurantCode: 108,
    restaurantDescription:
        "100% plant-based dishes with farm-fresh ingredients.",
    img: "https://example.com/green_leaf.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Vegan Burger",
      "Quinoa Salad",
      "Tofu Stir-fry",
      "Vegan Brownies"
    ],
    ratings: [4.6, 4.5, 4.4, 4.7, 4.3],
    orderQty: 62,
  ),
  RestaurantModel(
    sId: "9",
    restaurantName: "BBQ Kingdom",
    restaurantCode: 109,
    restaurantDescription: "Smoky BBQ dishes with a Southern-style twist.",
    img: "https://example.com/bbq_kingdom.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4", "T5"],
    listOfFood: ["Smoked Brisket", "BBQ Ribs", "Pulled Pork", "Mac & Cheese"],
    ratings: [4.7, 4.6, 4.5, 4.8, 4.9],
    orderQty: 99,
  ),
  RestaurantModel(
    sId: "10",
    restaurantName: "Sushi Paradise",
    restaurantCode: 110,
    restaurantDescription: "Premium sushi with fresh, high-quality seafood.",
    img: "https://example.com/sushi_paradise.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: ["California Roll", "Tuna Sashimi", "Dragon Roll", "Miso Soup"],
    ratings: [4.9, 5.0, 4.8, 4.7, 4.6],
    orderQty: 110,
  ),
  RestaurantModel(
    sId: "11",
    restaurantName: "Casa Mexicana",
    restaurantCode: 111,
    restaurantDescription: "Authentic Mexican street food and drinks.",
    img: "https://example.com/casa_mexicana.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: ["Tacos", "Burritos", "Quesadillas", "Churros"],
    ratings: [4.2, 4.3, 4.4, 4.5, 4.1],
    orderQty: 55,
  ),
  RestaurantModel(
    sId: "12",
    restaurantName: "The Rustic Table",
    restaurantCode: 112,
    restaurantDescription: "A cozy bistro offering farm-fresh comfort food.",
    img: "https://example.com/rustic_table.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Shepherd's Pie",
      "Roast Chicken",
      "Mashed Potatoes",
      "Apple Crumble"
    ],
    ratings: [4.6, 4.7, 4.8, 4.5, 4.4],
    orderQty: 90,
  ),
  RestaurantModel(
    sId: "13",
    restaurantName: "The Pancake House",
    restaurantCode: 113,
    restaurantDescription:
        "Serving the fluffiest pancakes and breakfast classics.",
    img: "https://example.com/pancake_house.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2"],
    listOfFood: [
      "Blueberry Pancakes",
      "Banana Waffles",
      "Omelette",
      "French Toast"
    ],
    ratings: [4.3, 4.2, 4.5, 4.4, 4.1],
    orderQty: 75,
  ),
  RestaurantModel(
    sId: "14",
    restaurantName: "Tandoori Nights",
    restaurantCode: 114,
    restaurantDescription: "Mouth-watering tandoori dishes and spicy curries.",
    img: "https://example.com/tandoori_nights.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: [
      "Tandoori Chicken",
      "Lamb Rogan Josh",
      "Garlic Naan",
      "Pani Puri"
    ],
    ratings: [4.7, 4.6, 4.8, 4.9, 4.5],
    orderQty: 102,
  ),
  RestaurantModel(
    sId: "15",
    restaurantName: "Fusion Bites",
    restaurantCode: 115,
    restaurantDescription: "An innovative mix of Asian and Western cuisine.",
    img: "https://example.com/fusion_bites.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Sushi Burrito",
      "Kimchi Tacos",
      "Ramen Burger",
      "Miso Glazed Salmon"
    ],
    ratings: [4.8, 4.7, 4.9, 4.6, 4.5],
    orderQty: 88,
  ),
  RestaurantModel(
    sId: "16",
    restaurantName: "Cedar Steakhouse",
    restaurantCode: 116,
    restaurantDescription: "Premium steak cuts grilled to perfection.",
    img: "https://example.com/cedar_steakhouse.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: [
      "Filet Mignon",
      "Ribeye Steak",
      "Truffle Fries",
      "Garlic Butter Shrimp"
    ],
    ratings: [4.9, 5.0, 4.8, 4.7, 4.6],
    orderQty: 125,
  ),
  RestaurantModel(
    sId: "17",
    restaurantName: "Golden Wok",
    restaurantCode: 117,
    restaurantDescription:
        "Authentic Chinese flavors in a contemporary setting.",
    img: "https://example.com/golden_wok.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Peking Duck",
      "Kung Pao Chicken",
      "Spring Rolls",
      "Hot & Sour Soup"
    ],
    ratings: [4.5, 4.6, 4.4, 4.3, 4.7],
    orderQty: 82,
  ),
  RestaurantModel(
    sId: "18",
    restaurantName: "The Cozy Corner",
    restaurantCode: 118,
    restaurantDescription:
        "A peaceful spot for coffee lovers and book readers.",
    img: "https://example.com/cozy_corner.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2"],
    listOfFood: ["Espresso", "Cheesecake", "Croissant", "Chai Latte"],
    ratings: [4.6, 4.7, 4.5, 4.8, 4.4],
    orderQty: 50,
  ),
  RestaurantModel(
    sId: "19",
    restaurantName: "Trattoria Roma",
    restaurantCode: 119,
    restaurantDescription: "Homemade Italian pasta and wood-fired pizza.",
    img: "https://example.com/trattoria_roma.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: ["Carbonara", "Margherita Pizza", "Lasagna", "Tiramisu"],
    ratings: [4.9, 5.0, 4.8, 4.7, 4.6],
    orderQty: 120,
  ),
  RestaurantModel(
    sId: "20",
    restaurantName: "Fiesta Latina",
    restaurantCode: 120,
    restaurantDescription: "A vibrant experience with Latin American flavors.",
    img: "https://example.com/fiesta_latina.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: ["Empanadas", "Churrasco", "Arepas", "Pisco Sour"],
    ratings: [4.7, 4.6, 4.5, 4.8, 4.9],
    orderQty: 102,
  ),
  RestaurantModel(
    sId: "21",
    restaurantName: "The Breakfast Club",
    restaurantCode: 121,
    restaurantDescription: "A delightful spot for all-day breakfast lovers.",
    img: "https://example.com/breakfast_club.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: ["Eggs Benedict", "Pancakes", "Hash Browns", "Latte"],
    ratings: [4.7, 4.6, 4.8, 4.5, 4.9],
    orderQty: 95,
  ),
  RestaurantModel(
    sId: "22",
    restaurantName: "Harvest Table",
    restaurantCode: 122,
    restaurantDescription: "A farm-to-table restaurant serving organic meals.",
    img: "https://example.com/harvest_table.jpg",
    isPopular: false,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: ["Kale Salad", "Quinoa Bowl", "Vegan Tacos", "Chia Pudding"],
    ratings: [4.4, 4.5, 4.6, 4.3, 4.2],
    orderQty: 68,
  ),
  RestaurantModel(
    sId: "23",
    restaurantName: "Downtown Burgers",
    restaurantCode: 123,
    restaurantDescription: "Juicy handcrafted burgers with gourmet toppings.",
    img: "https://example.com/downtown_burgers.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3", "T4"],
    listOfFood: [
      "Cheeseburger",
      "Bacon Burger",
      "Veggie Burger",
      "Sweet Potato Fries"
    ],
    ratings: [4.8, 4.9, 4.7, 4.6, 4.5],
    orderQty: 130,
  ),
  RestaurantModel(
    sId: "24",
    restaurantName: "Blue Lagoon",
    restaurantCode: 124,
    restaurantDescription: "A seafood haven with tropical cocktails.",
    img: "https://example.com/blue_lagoon.jpg",
    isPopular: true,
    listOfTable: ["T1", "T2", "T3"],
    listOfFood: [
      "Grilled Snapper",
      "Pineapple Shrimp",
      "Coconut Rice",
      "Mojito"
    ],
    ratings: [4.6, 4.7, 4.8, 4.5, 4.4],
    orderQty: 112,
  ),
];

List<FoodModel> foodList = [
  FoodModel(
    foodId: "F1003",
    restaurantId: "2",
    name: "Chicken Burger",
    category: "Burger",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUNBZ4MzsbblFrfjrDHM3VYcJmJoPAFTSWvMCuM_vaBzYauX42gdChNeY1wGdgFcI1x5w&usqp=CAU",
    price: 8.99,
    discount: 15.0,
  ),
  FoodModel(
    foodId: "F1001",
    restaurantId: "1",
    name: "Margherita Pizza",
    category: "Pizza",
    imageUrl:
        "https://secretrecipebd.com/wp-content/uploads/2021/07/vegatable_pizza.jpg",
    price: 12.99,
    discount: 10.0,
  ),
  FoodModel(
    foodId: "F1002",
    restaurantId: "1",
    name: "Pepperoni Pizza",
    category: "Pizza",
    imageUrl:
        "https://secretrecipebd.com/wp-content/uploads/2021/07/vegatable_pizza.jpg",
    price: 14.99,
    discount: 5.0,
  ),
  FoodModel(
    foodId: "F1011",
    restaurantId: "7",
    name: "Hyderabadi Biryani",
    category: "Biryani",
    imageUrl:
        "https://www.thespruceeats.com/thmb/XDBL9gA6A6nYWUdsRZ3QwH084rk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SES-chicken-biryani-recipe-7367850-hero-A-ed211926bb0e4ca1be510695c15ce111.jpg",
    price: 15.99,
    discount: 10.0,
  ),
  FoodModel(
    foodId: "F1008",
    restaurantId: "3",
    name: "Pasta Alfredo",
    category: "Pasta",
    imageUrl:
        "https://www.spicebangla.com/wp-content/uploads/2024/08/Spicy-Pasta-recipe-optimised-scaled.webp",
    price: 16.99,
    discount: 10.0,
  ),
  FoodModel(
    foodId: "F1007",
    restaurantId: "5",
    name: "Sushi Platter",
    category: "Sushi",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwG8x3ldhKYyRsyd_2qtPBAS9PRQJKzpj9xw&s",
    price: 29.99,
    discount: 12.0,
  ),
  FoodModel(
    foodId: "F1004",
    restaurantId: "3",
    name: "Beef Steak",
    category: "Steak",
    imageUrl:
        "https://thebigmansworld.com/wp-content/uploads/2023/07/sirloin-steak-recipe.jpg",
    price: 24.99,
    discount: 10.0,
  ),
  FoodModel(
    foodId: "F1012",
    restaurantId: "8",
    name: "Chicken Shawarma",
    category: "Shawarma",
    imageUrl: "https://i.ytimg.com/vi/aWWF16IkI6Q/sddefault.jpg",
    price: 10.99,
    discount: 8.0,
  ),
  FoodModel(
    foodId: "F1013",
    restaurantId: "9",
    name: "Mexican Tacos",
    category: "Tacos",
    imageUrl:
        "https://www.thecookierookie.com/wp-content/uploads/2024/05/street-tacos-recipe-2.jpg",
    price: 9.99,
    discount: 7.0,
  ),
  FoodModel(
    foodId: "F1014",
    restaurantId: "10",
    name: "Vanilla Ice Cream",
    category: "Ice Cream",
    imageUrl:
        "https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2022/08/Ice-cream-sundae-hero-11.jpg",
    price: 4.99,
    discount: 10.0,
  ),
  FoodModel(
    foodId: "F1015",
    restaurantId: "10",
    name: "Strawberry Cheesecake",
    category: "Cheesecake",
    imageUrl:
        "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FSeries%2F2024-07-how-to-make-perfect-cheesecake%2Fhow-to-make-perfect-cheesecake-319",
    price: 6.99,
    discount: 15.0,
  ),
];

final List<Map<String, String>> popularCategories = [
  {
    "name": "Burger",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUNBZ4MzsbblFrfjrDHM3VYcJmJoPAFTSWvMCuM_vaBzYauX42gdChNeY1wGdgFcI1x5w&usqp=CAU"
  },
  {
    "name": "Pizza",
    "image":
        "https://secretrecipebd.com/wp-content/uploads/2021/07/vegatable_pizza.jpg"
  },
  {
    "name": "Biryani",
    "image":
        "https://www.thespruceeats.com/thmb/XDBL9gA6A6nYWUdsRZ3QwH084rk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SES-chicken-biryani-recipe-7367850-hero-A-ed211926bb0e4ca1be510695c15ce111.jpg"
  },
  {
    "name": "Pasta",
    "image":
        "https://www.spicebangla.com/wp-content/uploads/2024/08/Spicy-Pasta-recipe-optimised-scaled.webp"
  },
  {
    "name": "Sushi",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwG8x3ldhKYyRsyd_2qtPBAS9PRQJKzpj9xw&s"
  },
  {
    "name": "Steak",
    "image":
        "https://thebigmansworld.com/wp-content/uploads/2023/07/sirloin-steak-recipe.jpg"
  },
  {
    "name": "Shawarma",
    "image": "https://i.ytimg.com/vi/aWWF16IkI6Q/sddefault.jpg"
  },
  {
    "name": "Tacos",
    "image":
        "https://www.thecookierookie.com/wp-content/uploads/2024/05/street-tacos-recipe-2.jpg"
  },
  {
    "name": "Ice Cream",
    "image":
        "https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2022/08/Ice-cream-sundae-hero-11.jpg"
  },
  {
    "name": "Cheesecake",
    "image":
        "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FSeries%2F2024-07-how-to-make-perfect-cheesecake%2Fhow-to-make-perfect-cheesecake-319"
  },
];
