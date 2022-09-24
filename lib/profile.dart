import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled8/product_model.dart';
import 'dart:async';
import 'dart:io';


class profilpage extends StatefulWidget {
  const profilpage({super.key});

  @override
  State<profilpage> createState() => _profilpageState();
}

class _profilpageState extends State<profilpage> {
  File? image;

  uploadImage() async {
    var pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else
      return {};
  }

  bool showpass = true;
  bool accpetrights = false;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue.withOpacity(0.5),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: image == null
                      ? Text(" ")
                      : Image.file(
                    image!,
                    fit: BoxFit.fill,
                    height: 200,
                    width: double.infinity,
                  ),
                )),
            Positioned(
              left: 135,
              top: 110,
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 155,
              child: Container(
                child: IconButton(
                    onPressed: uploadImage,
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.cyanAccent,
                      size: 50,
                    )),
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0))),
              margin: EdgeInsets.only(top: 180),
              height: double.infinity,
              child: SingleChildScrollView(
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
                                if (text!.length <= 17) {
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
                              height: 10,
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
                                  if (formstate.currentState!.validate()) {}
                                },
                                child: Text(
                                  "Creat profial",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                color: Colors.blue.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: MaterialButton(
                                minWidth: 250,
                                height: 45,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  if (formstate.currentState!.validate()) {}
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                color: Colors.red.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 100,
              left: 125,
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80)),
                child: image == null
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "add a photo",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    IconButton(
                        onPressed: uploadImage,
                        icon: Icon(
                          Icons.add_photo_alternate,
                          color: Colors.blue,
                          size: 20,
                        ))
                  ],
                )
                    : Image.file(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}