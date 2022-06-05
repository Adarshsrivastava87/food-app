import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Restaurent extends StatefulWidget {
  const Restaurent({Key? key}) : super(key: key);

  @override
  State<Restaurent> createState() => _RestaurentState();
}

class _RestaurentState extends State<Restaurent> {
  String? _username;
  @override
  void initState() {
    super.initState();
    getValues();
  }

  Future<void> getValues() async {
    SharedPreferences myPref = await SharedPreferences.getInstance();
    var data = myPref;
    setState(() {
      _username = data.getString('UserName');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 238, 171),
        title: Row(
          children: [
            Text(
              'Welcome',
              style: GoogleFonts.italianno(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Container(
              width: 10,
            ),
            Text('$_username',
                style: GoogleFonts.italianno(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourth');
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  )),
              ElevatedButton(
                onPressed: () async {
                  final SharedPreferences myPrefs =
                      await SharedPreferences.getInstance();
                  myPrefs.clear();

                  Navigator.pop(context);
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1.2,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 239, 234, 192),
          Color.fromARGB(255, 196, 220, 240),
          Color.fromARGB(255, 243, 187, 205)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 700,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/image@.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 50,
              child: Text(
                'Popular Restaurent',
                style: GoogleFonts.italianno(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: 700,
                  child: ListView(children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color.fromARGB(
                                                    255, 212, 227, 239),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3lL9ccXXoeCmZI4JvtR-3Z1PtMlN_RRB6VYH8qVWSGhrSyefcfhadw8JU41WA5iA-1J8&usqp=CAU'),
                                                    fit: BoxFit.cover))),
                                        Text('FoodAdda',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Color.fromARGB(
                                                    255, 179, 211, 237),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg'),
                                                    fit: BoxFit.cover))),
                                        Text('Aryan',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/thired');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color.fromARGB(
                                                    255, 212, 227, 239),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudHN8ZW58MHx8MHx8&w=1000&q=80'),
                                                    fit: BoxFit.cover))),
                                        Text('PizzaPoint',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color.fromARGB(
                                                    255, 212, 227, 239),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://media.istockphoto.com/photos/modern-restaurant-interior-design-picture-id1211547141?k=20&m=1211547141&s=612x612&w=0&h=KiZX3NBZVCK4MlSh4BJ8hZNSJcTIMbNSSV2yusw2NmM='),
                                                    fit: BoxFit.cover))),
                                        Text('FoodVilla',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color.fromARGB(
                                                    255, 212, 227, 239),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://media.istockphoto.com/photos/cozy-restaurant-for-gathering-with-friends-picture-id1159992039?k=20&m=1159992039&s=612x612&w=0&h=t2lqevaWYLXvcjDeKzbHvIRF6GE3gxiqO6AIezr3Mws='),
                                                    fit: BoxFit.cover))),
                                        Text('WowMomos',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color.fromARGB(
                                                    255, 212, 227, 239),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://restaurantengine.com/wp-content/uploads/2015/05/startup-restaurants-typically-overspend.jpg'),
                                                    fit: BoxFit.cover))),
                                        Text('DiamondRestaurent',
                                            style: GoogleFonts.aclonica(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text('Visit'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
