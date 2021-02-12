import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Map> images = [
    {
      "name": "Olivia",
      "age": "17",
      "horoscope": "Cancer",
      "image": "assets/images/actor_female_1.jpg"
    },
    {
      "name": "Emma",
      "age": "25",
      "horoscope": "Aries",
      "image": "assets/images/actor_female_2.jpg"
    },
    {
      "name": "Ava",
      "age": "19",
      "horoscope": "Scorpio",
      "image": "assets/images/actor_female_3.jpg"
    },
    {
      "name": "Sophia",
      "age": "22",
      "horoscope": "Aquarius",
      "image": "assets/images/actor_female_4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(249, 176, 187, 1),
      appBar: PreferredSize(
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(113, 113, 113, 1),
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(height * 0.03),
                      bottomRight: Radius.circular(height * 0.03))),
              child: Column(
                children: [
                  Container(
                    height: height * 0.1,
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                height: height * 0.1,
                                child: CircleAvatar(
                                  radius: height * 0.03,
                                  backgroundColor:
                                      Color.fromRGBO(237, 84, 105, 1),
                                  child: Icon(Icons.arrow_back,
                                      color: Colors.white),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.032, right: width * 0.04),
                          child: Container(
                            height: height * 0.1,
                            child: Text(
                              "SWIPE RIGHT",
                              style: TextStyle(
                                  color: Color.fromRGBO(237, 84, 105, 1),
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: Container(
                            height: height * 0.1,
                            child: Icon(
                              Icons.mail,
                              color: Color.fromRGBO(237, 84, 105, 1),
                              size: height * 0.05,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: InkWell(
                            onTap: () {
                              // _scaffoldKey.currentState.openDrawer();
                              if (_scaffoldKey.currentState.isDrawerOpen) {
                                _scaffoldKey.currentState.openEndDrawer();
                              } else {
                                _scaffoldKey.currentState.openEndDrawer();
                              }
                              // Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              height: height * 0.1,
                              child: Icon(
                                Icons.menu,
                                color: Color.fromRGBO(237, 84, 105, 1),
                                size: height * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.7,
                    width: width * 0.8,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            new Image.asset(
                              images[index]['image'],
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              "Name: " + images[index]['name'].toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(237, 84, 105, 1),
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Age: " + images[index]['age'].toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(237, 84, 105, 1),
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Horoscope: " +
                                  images[index]['horoscope'].toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(237, 84, 105, 1),
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      },
                      indicatorLayout: PageIndicatorLayout.COLOR,
                      // autoplay: true,
                      itemCount: images.length,
                      control: new SwiperControl(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(width, height * 0.8)),
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.03),
        child: Container(
          // color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.1),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: Container(
                      height: height * 0.1,
                      child: CircleAvatar(
                        radius: height * 0.03,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.refresh,
                            color: Color.fromRGBO(237, 84, 105, 1)),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.01),
                child: GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      height: height * 0.1,
                      child: CircleAvatar(
                          radius: height * 0.06,
                          backgroundColor: Colors.white,
                          child: Image.asset("assets/images/lovebtn.png")),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.1),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: Container(
                      height: height * 0.1,
                      child: CircleAvatar(
                        radius: height * 0.03,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.star,
                            color: Color.fromRGBO(237, 84, 105, 1)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: height * 0.052,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: height * 0.05,
                      backgroundColor: Color.fromRGBO(237, 84, 105, 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: Text(
                      "MINI",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.03,
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 176, 187, 1),
                // border: Border(
                //     bottom: BorderSide(color: Colors.white, width: 0.01)

                //     )
              ),
            ),
            Container(
              height: height,
              color: Color.fromRGBO(249, 176, 187, 1),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "CHATS",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "NOTIFICATION MUTING",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "ANONYMOUS",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "INVITE FRIENDS",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "APP PREFERENCES",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        right: width * 0.01,
                        top: height * 0.01),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: height * 0.02),
                        child: Text(
                          "NEED HELP?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
