class food1 {
  String name;
  String imageUrl;
  // String description;
  double price;
  // int id;

  food1({
    required this.name,
    required this.imageUrl,
    // required this.description,
    required this.price,
  });
  // required this.id
}

class FoodServices {
  List<food1> getfood1() {
    List<food1> restaurant1 = [
      food1(
        name: 'Tikki Twist Burger',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/160/f2bc9f2341e2835bab35bea372310160.jpg?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Tikki bhi, Twist bhi! Our new signature burger with spicy sauce, onion, mix veg patty & a crunchy twist!',
        price: 60,
      ),
      food1(
        name: 'Veg Fried Rice',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/e1a/91972380a3892012b7235a6bd6a39e1a.png?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Basmati rice fried with Green beans, apple cider, carrots , cabbage, bell peppers.',
        price: 130,
      ),
      food1(
        name: 'Schezwan Fried Rice',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/4a0/9d410122193c9d55b01e6bca76d194a0.png?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Basmati rice fried with Green beans, apple cider, carrots , cabbage, bell peppers in Schezwan sauce.',
        price: 135,
      ),
      food1(
        name: 'Chicken Handi',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/13d/b5ae58d65f6601881f012398a71e213d.png?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Chicken Handi is a recipe that is made in an earthenware/clay pot.',
        price: 60,
      ),
      food1(
        name: 'Chicken Kadhai',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/040/f83f21a7d597a04473e68c0970d4f040.jpg?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Kadai chicken is a delicious, spicy & flavorful dish made with chicken, onions, tomatoes, ginger, garlic & fresh ground spices known as kadai masala.',
        price: 200,
      ),
      food1(
        name: 'Veg Maharaja Meal Thali',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/87e/2d466f83c91ad9c213329551da10887e.png?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Paneer Dish + Mixed Veg + Dal Tadka + Butter Naan Or Laccha Paratha 2 Pcs + Rice Jeera Or Steamed + Raita/Curd + Salad + Papad + Sweet Dish+Pickles+Condiment etc.',
        price: 249,
      ),
      food1(
        name: 'Kadhai Paneer With Butter Naan',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/8ba/f36284d5253651342d117270a04088ba.png?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Kadhai paneer + 2pcs butter naan,Our Famous In House Delicacy Cooked Over Night On Slow Fire And Tempered With Various Spices Furnished With Cream',
        price: 215,
      ),
      food1(
        name: 'Butter Naan',
        imageUrl:
            'https://b.zmtcdn.com/data/dish_photos/08f/31a5e45a345d4f619f8e81ee0f57e08f.jpg?fit=around|130:130&crop=130:130;*,*',
        // description:
        //     'Crispy Delicate Handkerchief Thin Bread Tossed And Cooked On A Iron Griddle.',
        price: 15,
      )
    ];
    return restaurant1;
  }

  getfood2() {}
}
