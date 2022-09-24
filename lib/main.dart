import 'package:flutter/material.dart';
import 'package:untitled8/favorite.dart';
import 'package:untitled8/login2.dart';
import 'category.dart';
import 'login.dart';
import 'register.dart';
import 'profile.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';
import 'homepageapi.dart';
import 'apimodel.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';
import 'package:untitled8/favorite.dart';
import 'apimodel.dart';
import './login2.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return cartmodel();
        },
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.white,
          ),
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          home: loginpage(),
        ));

  }
}
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int selectedindex = 0;
  List<Widget> widgetpages = [
    favorite(),
    category(),
   profilpage(),
  ];
  @override
  void initState() {
    super.initState();
    print("init sate");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white,
            selectedFontSize: 15,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            currentIndex: selectedindex,
            backgroundColor: Color.fromARGB(255, 82, 81, 81),
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.holiday_village), label: "category"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "profle")
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: widgetpages.elementAt(selectedindex));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}





