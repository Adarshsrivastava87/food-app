import 'package:flutter/material.dart';
import 'package:flutter_application_1/Final_project/screen/home.dart';
import 'package:flutter_application_1/project/SignUppage.dart';
import 'package:flutter_application_1/project/logdemo.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LogInPageSP extends StatefulWidget {
  const LogInPageSP({Key? key}) : super(key: key);

  @override
  State<LogInPageSP> createState() => _LogInPageSPState();
}

class _LogInPageSPState extends State<LogInPageSP> {
  @override
  void initState() {
    super.initState();
    loginSave();
    check();
  }

  Future loginSave() async {
    SharedPreferences myPref = await SharedPreferences.getInstance();
    myPref.setString('UserName', usernameController.text);
    myPref.setString('Password', passwordController.text);
  }

  Future check() async {
    SharedPreferences myPref = await SharedPreferences.getInstance();
    var data = myPref;
    if (!data.containsKey('UserName') && !data.containsKey('Password')) {
      return false;
    } else {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => Restaurent()));
    }
  }

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? _remindme = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 203, 226, 199),
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            title: const Text(
              'Login Form',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 45, 45, 45)),
            ),
            backgroundColor: Color.fromARGB(255, 203, 226, 199)),
        backgroundColor: Colors.transparent,
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://static.vecteezy.com/system/resources/thumbnails/004/909/790/small_2x/natural-food-logo-design-template-vector.jpg'))),
                          ),
                        ),
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                              labelText: 'UserName',
                              hintText: 'username',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username cant be blank';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'password',
                          hintText: 'password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password cant be blank';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Checkbox(
                            value: _remindme,
                            onChanged: (value) {
                              setState(() {
                                _remindme = value;
                              });
                            }),
                        SizedBox(width: 8.0),
                        const Text('Remember')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formkey.currentState!.validate() && _remindme!) {
                            SharedPreferences myPrefs =
                                await SharedPreferences.getInstance();
                            myPrefs.setString(
                                'UserName', usernameController.text);
                            myPrefs.setString(
                                'Password', passwordController.text);
                          }
                          Navigator.pushNamed(context, '/first');
                        },
                        child: Text('login'),
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("don't have account click here"),
                  //     ElevatedButton(
                  //         onPressed: () {
                  //           Navigator.pushNamed(context, '/1');
                  //         },
                  //         child: Text('Register')),
                  //   ],
                  // )
                ],
              ),
            )),
      ),
    );
  }
}
