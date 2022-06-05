import 'package:flutter/material.dart';

import 'package:flutter_application_1/Final_project/model&services/restaurant1.dart';

import 'package:google_fonts/google_fonts.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<food1> foodList = FoodServices().getfood1();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Food Adda',
            style: GoogleFonts.aBeeZee(fontSize: 25, color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 223, 244),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3lL9ccXXoeCmZI4JvtR-3Z1PtMlN_RRB6VYH8qVWSGhrSyefcfhadw8JU41WA5iA-1J8&usqp=CAU'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 15.0,
                    top: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Best Food',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 17, 17, 17)),
                        ),
                        Text(
                          'Only Rs.500',
                          style: TextStyle(
                              color: Color.fromARGB(255, 14, 15, 14),
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 198, 223, 244),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 198, 223, 244),
                      Color.fromARGB(255, 134, 239, 137)
                    ])),
                child: Column(
                  children: [
                    Text('Popular items',
                        style:
                            GoogleFonts.aclonica(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text('Delivery In',
                        style: GoogleFonts.aclonica(
                            fontWeight: FontWeight.bold, fontSize: 32)),
                    Text("30 Minuts",
                        style:
                            GoogleFonts.aclonica(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 340,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 243, 126, 165),
                        Color.fromARGB(255, 247, 236, 132)
                      ])),
                  child: ListView.builder(
                      itemCount: foodList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                leading: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      NetworkImage(foodList[index].imageUrl),
                                ),
                                title: Text(foodList[index].name),
                                subtitle: Row(
                                  children: [
                                    Text('Rs'),
                                    Text(foodList[index].price.toString()),
                                  ],
                                ),
                                trailing: IconButton(
                                    onPressed: () {}, icon: Text('Add'))));
                      })),
            )
          ],
        ),
      ),
    );
  }
}
