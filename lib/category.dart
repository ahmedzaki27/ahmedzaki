import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';
import 'homepageapi.dart';
import 'apimodel.dart';
import 'favorite.dart';
class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  void initState() {
    Provider.of<cartmodel>(context,listen: false).getAllCategory();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<cartmodel>(builder: (context, cartmodel, child) {
      return cartmodel.data == null
          ? Center(
        child: CircularProgressIndicator(color: Colors.blue),
      )
          :
        Container(
          child: ListView.builder(
              itemCount: cartmodel.category!.data!.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(children: [
                    Expanded(
                      child: Image.network(
                        cartmodel.category!.data!.data![index].image!,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Text(
                        "${cartmodel.category!.data!.data![index].name!}")
                  ]),
                );
              }));
    });
  }
}
