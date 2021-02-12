import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSendMessage = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final sendmessageButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(237, 84, 105, 1),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {},
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => HomePage()));
        // },

        child: this.isSendMessage
            ? Container(
                height: height * 0.03,
                width: height * 0.03,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  value: null,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
              )
            : Text(
                "Send Message",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: height / 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(249, 176, 187, 1),
        appBar: PreferredSize(
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(height * 0.02),
                        bottomRight: Radius.circular(height * 0.02))),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.008),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.4, height * 0.015, 0, 0),
                        child: Container(
                          height: height * 0.1,
                          width: width * 0.3,
                          child: Text("Loved it!",
                              style: TextStyle(
                                  color: Color.fromRGBO(237, 84, 105, 1),
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),

                      /*
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Container(
                          height: height * 0.1,
                          width: width * 0.3,
                          child: Icon(
                            Icons.menu,
                            color: Color.fromRGBO(237, 84, 105, 1),
                            size: height * 0.05,
                          ),
                        ),
                      ),
                      */
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: MediaQuery.of(context).size * 0.07),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.0, top: height * 0.02),
              child: Container(
                height: height * 0.15,
                width: width * 0.7,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                  image: new ExactAssetImage("assets/images/logomain.png"),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            // Container(
            //   height: height * 0.01,
            //   width: height * 0.03,
            //   child: Image.asset("assets/images/giphy.gif"),
            // ),
            Stack(
              children: [
                Container(
                  // color: Colors.blue,
                  height: height * 0.5,
                  width: width,
                ),
                Positioned(
                  top: height * 0.08,
                  left: width * 0.08,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: height * 0.12,
                  ),
                ),
                Positioned(
                  bottom: height * 0.05,
                  right: width * 0.08,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: height * 0.12,
                  ),
                ),
                Positioned(
                  top: height * 0.18,
                  left: width * 0.35,
                  child: Container(
                    height: height * 0.17,
                    width: height * 0.17,
                    child: Image.asset("assets/images/giphy.gif"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.27),
                  child: Text(
                    "MATCHED",
                    style: TextStyle(
                        fontSize: height * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(237, 84, 105, 1)),
                  ),
                ),
                Container(
                    height: height * 0.07,
                    width: height * 0.07,
                    child: Image.asset("assets/images/loader.gif")),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.1, right: width * 0.1, top: height * 0.01),
              child: sendmessageButton,
            ),
          ],
        ),
      ),
    );
  }
}
