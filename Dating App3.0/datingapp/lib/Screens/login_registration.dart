import 'package:datingapp/Screens/login_page.dart';
import 'package:datingapp/Screens/registration.dart';
import 'package:flutter/material.dart';

class LoginandRegistration extends StatefulWidget {
  @override
  _LoginandRegistrationState createState() => _LoginandRegistrationState();
}

class _LoginandRegistrationState extends State<LoginandRegistration> {
  int currentIndex = 0;

  String username;
  final formKey = GlobalKey<FormState>();

  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(249, 176, 187, 1),
        appBar: PreferredSize(
            child: Container(
              color: Colors.transparent,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.008),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Container(
                          height: height * 0.1,
                          width: width * 0.3,
                          child: Image.asset("assets/images/logomain.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: MediaQuery.of(context).size * 0.07),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36))),
            child: this.currentIndex == 0 ? LoginPage() : RegistrationPage()),
        bottomNavigationBar: bottomNavbar(height),
      ),
    );
  }

  Widget bottomNavbar(double height) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(249, 176, 187, 1),
      type: BottomNavigationBarType.fixed,
      iconSize: height * 0.03,
      // currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          // label: "Login",

          // ignore: deprecated_member_use
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),

          // ignore: deprecated_member_use
          title: Text(
            "Registration",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      onTap: (index) {
        setState(() {
          this.currentIndex = index;
        });
      },
    );
  }
}
