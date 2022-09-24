import 'package:flutter/material.dart';
 import 'package:untitled8/favorite.dart';
import 'package:untitled8/main.dart';
import 'register.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}
class _loginpageState extends State<loginpage> {
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
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: Icon(
                          Icons.account_box_rounded,
                          size: 110,
                          color: Colors.blueAccent,
                        ),
                        radius: 70,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Login ",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.blue),
                          ),


                        ],
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
                        labelText: "Enter your  Email",
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
                      height: 30,
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.length <8) {
                          return " your password less than 8 characters";
                        }
                        return null;
                      },
                      obscureText: showpass,
                      decoration: InputDecoration(
                        labelText: "Enter your password ",
                        prefixIcon: Icon(
                          Icons.password,
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
                      height: 18,
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
                          "Remember me",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width:85,
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Container(

                              child: Text(
                                "Forgest password !!",
                                style: TextStyle(
                                  fontSize: 12, ),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      child: MaterialButton(
                        minWidth: 250,
                        height: 45,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          if (formstate.currentState!.validate()) {Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));
                          }
                        },
                        child: Text(
                          "Login",
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
                          Text("Don't have an acount ?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Registerpage();
                              }));
                            },
                            child: Container(
                                padding: EdgeInsets.only(left: 0),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 20,
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