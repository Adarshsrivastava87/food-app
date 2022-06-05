// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/state_Manegment/provider/quantaty.dart';
// import 'package:flutter_application_1/state_Manegment/provider/user_cart.dart';
// import 'package:provider/provider.dart';

// import 'state_Manegment/provider/product_catlog.dart';

// class SMDemos extends StatelessWidget {
//   const SMDemos({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProductCatalog(),
//     );
//   }
// }

// Future main() async {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UserCart()),
//         ChangeNotifierProvider(create: (_) => Quantaty())
//       ],
//       child: const SMDemos(),
//     ),
//   );
// }

//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/FireBase_demo/CRUID_Firebase/Final_project/login.dart';
//import 'package:flutter_application_1/FireBase_demo/getX_firebase/home_page.dart';
//import 'package:flutter_application_1/firebase_options.dart';

//import 'FireBase_demo/adduser.dart';
//import 'package:flutter_application_1/sp_demo/myLogInPage.dart';
//import 'package:flutter_application_1/sp_demo/sharedPExample.dart';

//import 'package:flutter_application_1/sp_demo/sharedPExample.dart';
//import 'package:flutter_application_1/revesion/my_app/home.dart';

//import 'package:flutter_application_1/screens/counter.dart';
//import 'package:flutter_application_1/lifecycle_activity/page1.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/FireBase_demo/CRUID_Firebase/Addnewuser.dart';

// import 'package:flutter_application_1/firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(MaterialApp(home: Addnewuser()));
// }

// class FBFlutterApp extends StatelessWidget {
//   const FBFlutterApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Adding Record to Firebase DB'),
//         ),
//         body: const AddUser(
//             userName: 'adarsh',
//             password: 'Srivastava',
//             emailId: 'adarshsrivastava@gmail.com'),
//       ),
//     );
//   }
// }

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_application_1/Final_project/login.dart';
// import 'package:flutter_application_1/firebase_options.dart';

// import 'Final_project/SignUppage.dart';
// import 'Final_project/home.dart';

// // import 'package:flutter_application_1/Final_project/login.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const FinalLogInPage(),
//         '/second': (context) => const SignUpPage(),
//         '/thired': (context) => const Home(),
//       },
//     ),
//   );
// }

import 'package:flutter/material.dart';

import 'package:flutter_application_1/Final_project/screen/cart.dart';
import 'package:flutter_application_1/Final_project/restaurent/food2.dart';

import 'package:flutter_application_1/Final_project/screen/home.dart';

import 'Final_project/restaurent/food1.dart';
import 'Final_project/screen/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const LogInPageSP(),
      '/first': (context) => const Restaurent(),
      '/second': (context) => const Food(),
      '/thired': (context) => const Food2(),
      '/fourth': (context) => const CartView(),
    },
  ));
}
