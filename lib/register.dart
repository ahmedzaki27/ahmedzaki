import 'package:flutter/material.dart';
import 'package:untitled8/favorite.dart';
import 'login.dart';
import 'main.dart';
class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}
class _RegisterpageState extends State<Registerpage> {
  bool showpass = true;
  bool accpetrights = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formstate,
            child: Container(
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.white38,
                        child: Icon(
                          Icons.account_box_rounded,
                          size: 110,
                          color: Colors.blueAccent,
                        ),
                        radius: 50,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Register ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.lightBlue),
                          ),
                          Spacer(),
                          Text(
                            "form ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.lightBlue),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 6),

                          )
                        ],
                      ),
                    ),
                    SizedBox( height:25,
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return " your name is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "enter your first name",
                        prefixIcon: Icon(Icons.manage_accounts),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueAccent, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return " your name is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "enter your last name",
                        prefixIcon: Icon(Icons.manage_accounts),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueAccent, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: (text) {
                          if (text!.isEmpty) {
                            return " your name is required";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "enter your Email",
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.blueAccent, width: 5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.green, width: 5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.red, width: 5),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 5),
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),  TextFormField(
                      validator: (text) {
                        if (text!.length < 8) {
                          return " your password less than 8characters";
                        }
                        return null;
                      },
                      obscureText: showpass,
                      decoration: InputDecoration(
                        labelText: "enter your password ",
                        prefixIcon: Icon(
                            Icons.password
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showpass = !showpass;
                              });
                            },
                            icon: Icon(showpass
                                ? (Icons.visibility_off)
                                : (Icons.visibility))),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueAccent, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.length >= 17) {
                          return " your phone number incorrect";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      initialValue: " +20 / ",
                      decoration: InputDecoration(
                        labelText: "enter your phone number",
                        prefixIcon: Icon(Icons.phone_android),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueAccent, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: accpetrights,
                            onChanged: (val) {
                              setState(() {
                                accpetrights = val!;
                              });
                            }),
                        Text(
                          "Agree with terms & condition",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      child: MaterialButton(
                        minWidth: 250,
                        height: 45,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          if (formstate.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));

                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an acount ?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return loginpage();
                              }));
                            },
                            child: Container(
                                padding: EdgeInsets.only(left: 0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
