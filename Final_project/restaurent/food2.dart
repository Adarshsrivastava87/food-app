import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../model&services/restaurant2.dart';

class Food2 extends StatefulWidget {
  const Food2({Key? key}) : super(key: key);

  @override
  State<Food2> createState() => _Food2State();
}

class _Food2State extends State<Food2> {
  final food2List = Foodservice2().getFood2();
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
            'Aryan',
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
                                'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg'),
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
                              color: Color.fromARGB(255, 245, 238, 238)),
                        ),
                        Text(
                          'Only Rs.700',
                          style: TextStyle(
                              color: Color.fromARGB(255, 145, 218, 245),
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
                      Color.fromARGB(255, 235, 113, 20),
                      Color.fromARGB(255, 83, 54, 230)
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
                      itemCount: food2List.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                leading: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      NetworkImage(food2List[index].imageUrl),
                                ),
                                title: Text(food2List[index].name),
                                subtitle: Row(
                                  children: [
                                    Text('Rs'),
                                    Text(food2List[index].price.toString()),
                                  ],
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: Text('add'),
                                )));
                      })),
            )
          ],
        ),
      ),
    );
  }
}
