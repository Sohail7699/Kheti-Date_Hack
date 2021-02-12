import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController middleNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController contactController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController horoscope = new TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isRegistration = false;

  List<String> genders = ["Male", "Female"];
  List<String> horoscopelist = [
    "Aries",
    "Taurus",
    "Gemini",
    "Cancer",
    "Leo",
    "Virgo",
    "Libra",
    "Scorpio",
    "Sagittarius",
    "Capricorn",
    "Aquarius",
    "Pisces"
  ];

  List<Map> categories = [
    {"id": 1, "option": "A relationship"},
    {"id": 2, "option": "Nothing Serious"},
    {"id": 3, "option": "I'll know when I find it"}
  ];
  String selectedHoroScope;

  String selectedCategory;
  String selectedGender;
  int selectedCategoryid;
  @override
  void initState() {
    super.initState();
    selectedCategoryid = categories[0]['id'];
    // print("Categoriesid" + selectedCategoryid.toString());
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    final registrationtitle = Text(
      "Registration",
      style: TextStyle(
          fontSize: height * 0.03, color: Color.fromRGBO(237, 84, 105, 1)),
    );

    final registrationButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(237, 84, 105, 1),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {},
        child: this.isRegistration
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
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: height / 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
      ),
    );

    final firstNametextfield = TextFormField(
      style: TextStyle(color: Color.fromRGBO(237, 47, 91, 1)),
      controller: firstNameController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Username",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    // final middleNametextfield = TextFormField(
    //   controller: middleNameController,
    //   decoration: InputDecoration(
    //       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //       labelText: "Middle Name",
    //       labelStyle: TextStyle(
    //         fontSize: height * 0.02,
    //         color: Color.fromRGBO(237, 47, 91, 1),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
    //         borderRadius: BorderRadius.circular(12.0),
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
    //         borderRadius: BorderRadius.circular(12.0),
    //       ),
    //       border:
    //           OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    // );

    // final lastNametextfield = TextFormField(
    //   controller: lastNameController,
    //   decoration: InputDecoration(
    //       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //       labelText: "Last Name",
    //       labelStyle: TextStyle(
    //         fontSize: height * 0.02,
    //         color: Color.fromRGBO(237, 47, 91, 1),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
    //         borderRadius: BorderRadius.circular(12.0),
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
    //         borderRadius: BorderRadius.circular(12.0),
    //       ),
    //       border:
    //           OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    // );

    final contacttextfield = TextFormField(
      style: TextStyle(color: Color.fromRGBO(237, 47, 91, 1)),
      controller: contactController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Contact",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final emailtextfield = TextFormField(
      style: TextStyle(color: Color.fromRGBO(237, 47, 91, 1)),
      controller: emailController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Email",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final agetextfield = TextFormField(
      style: TextStyle(color: Color.fromRGBO(237, 47, 91, 1)),
      controller: ageController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Age",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final addresstextfield = TextFormField(
      style: TextStyle(color: Color.fromRGBO(237, 47, 91, 1)),
      controller: addressController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Addres",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );
    return Padding(
      padding: EdgeInsets.all(height * 0.035),
      // padding: EdgeInsets.all(0),
      // padding: EdgeInsets.fromLTRB(
      //     width * 0.05, height * 0.035, width * 0.05, height * 0.0),
      child: SingleChildScrollView(
        child: Container(
          height: height * 1.1,
          child: Form(
            key: formKey,
            child: Card(
              elevation: 0,
              margin: EdgeInsetsDirectional.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.01,
                    ),
                    registrationtitle,
                    SizedBox(
                      height: height / 30,
                    ),
                    firstNametextfield,
                    SizedBox(
                      height: height / 30,
                    ),
                    contacttextfield,
                    SizedBox(
                      height: height / 30,
                    ),
                    emailtextfield,
                    SizedBox(
                      height: height / 30,
                    ),
                    agetextfield,
                    SizedBox(
                      height: height / 30,
                    ),
                    addresstextfield,
                    SizedBox(
                      height: height / 30,
                    ),
                    DropdownButtonFormField<String>(
                        style: TextStyle(
                            color: Color.fromRGBO(237, 47, 91, 1),
                            fontSize: height * 0.02),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(237, 47, 91, 1)),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(237, 47, 91, 1)),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            // filled: true,
                            fillColor: Color.fromRGBO(237, 47, 91, 1)),
                        items: horoscopelist.map((String val) {
                          return new DropdownMenuItem<String>(
                            value: val,
                            child: new Text(val),
                          );
                        }).toList(),
                        hint: this.selectedHoroScope == null
                            ? Text(
                                "Please choose a Horoscope",
                                style: TextStyle(
                                    color: Color.fromRGBO(237, 47, 91, 1),
                                    fontSize: height * 0.02),
                              )
                            : Text(
                                selectedHoroScope,
                              ),
                        onChanged: (newVal) {
                          selectedHoroScope = newVal;
                          this.setState(() {
                            print(selectedHoroScope);
                          });
                        }),
                    SizedBox(
                      height: height / 25,
                    ),
                    DropdownButtonFormField<String>(
                        style: TextStyle(
                            color: Color.fromRGBO(237, 47, 91, 1),
                            fontSize: height * 0.02),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(237, 47, 91, 1)),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(237, 47, 91, 1)),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            // filled: true,
                            fillColor: Color.fromRGBO(237, 47, 91, 1)),
                        items: genders.map((String val) {
                          return new DropdownMenuItem<String>(
                            value: val,
                            child: new Text(val),
                          );
                        }).toList(),
                        hint: this.selectedGender == null
                            ? Text(
                                "Please choose a Gender",
                                style: TextStyle(
                                    color: Color.fromRGBO(237, 47, 91, 1),
                                    fontSize: height * 0.02),
                              )
                            : Text(
                                selectedGender,
                              ),
                        onChanged: (newVal) {
                          selectedGender = newVal;
                          this.setState(() {
                            print(selectedGender);
                          });
                        }),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "What are you looking for on Chakhewa?",
                      style: TextStyle(
                        fontSize: height * 0.02,
                        color: Color.fromRGBO(237, 47, 91, 1),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: categories
                          .map((e) => Container(
                                height: height * 0.06,
                                child: RadioListTile(
                                  activeColor: Color.fromRGBO(237, 84, 105, 1),
                                  title: Text(
                                    e["option"],
                                    style: TextStyle(
                                        color: Color.fromRGBO(237, 84, 105, 1),
                                        fontSize: height * 0.02),
                                  ),
                                  groupValue: selectedCategoryid,
                                  value: e["id"],
                                  onChanged: (value) {
                                    setState(() {
                                      this.selectedCategoryid = value;
                                      this.selectedCategory = e['option'];
                                      // print(selectedCategory);
                                      // print("ONChanged" +
                                      //     selectedCategoryid.toString());
                                    });
                                  },
                                ),
                              ))
                          .toList(),
                    ),
                    registrationButton,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
