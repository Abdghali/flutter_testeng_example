import 'package:flutter/material.dart';
import 'package:testingexample1/modules/Book.dart';
import 'package:testingexample1/pages/HomePage.dart';
import 'package:testingexample1/utility/appColor.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width = MediaQuery.of(Get.context).size.width / 3;
  double hight = MediaQuery.of(Get.context).size.height;
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    loginbackgroundColor1,
                    loginbackgroundColor2,
                    loginbackgroundColor3,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  TextFormField(
                    key: Key('email'),
                    controller: userName,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your email',
                      labelText: 'Email *',
                    ),
                  ),
                  TextFormField(
                      key: Key('password'),
                      controller: password,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: 'Enter your password',
                        labelText: 'Password *',
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     Get.to(HomePage());
                  //   },
                  //   icon: Icon(Icons.send),
                  //   hoverColor: Colors.blueAccent[200],
                  // ),
                  InkWell(
                    key: Key('login_button'),
                    onTap: () {
                      Get.to(HomePage());
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.send),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
