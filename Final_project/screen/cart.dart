import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../model&services/restaurant1.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  TextEditingController AddressController = TextEditingController();
  @override
  final foodList = FoodServices().getfood1();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 247, 184, 163),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Your Shopping Cart',
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 500,
                width: 1000,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(foodList[index].imageUrl)),
                        title: Text(foodList[index].name),
                        subtitle: Text(foodList[index].price.toString()),
                      );
                    }))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  width: 1000,
                  color: Color.fromARGB(255, 185, 221, 240),
                  child: TextField(
                    controller: AddressController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: 'Enter your Address',
                        prefixIcon: Icon(Icons.home),
                        border: const OutlineInputBorder()),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 185, 221, 240),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      const Text('Total Price'),
                      SizedBox(height: 15),
                      const Text('100')
                    ],
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Text(
                    'Order',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: const Color.fromARGB(255, 247, 232, 97),
                ),
              ],
            ),
          ],
        ));
  }
}

////////////
// Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: 150,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color:
//                                       const Color.fromARGB(255, 212, 227, 239),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           foodList[index].imageUrl),
//                                       fit: BoxFit.cover)),
//                             ),
//                           ),
//                           Container(
//                             height: 150,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Color.fromARGB(255, 213, 245, 204)),
//                             child: Column(
//                               children: [
//                                 const Padding(
//                                     padding: const EdgeInsets.only(top: 5)),
//                                 Text(foodList[index].name,
//                                     style: GoogleFonts.italiana(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.bold)),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text('Rs'),
//                                     Text(foodList[index].price.toString()),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 12),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: const Icon(Icons.add)),
//                                     const Text('1'),
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: const Icon(Icons.remove))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       );
