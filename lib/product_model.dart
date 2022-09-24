import 'package:flutter/material.dart';

class Product extends StatefulWidget{
  int? image;
  int? id;
  String? name;
  String? prand;
  int? price;
  int? oldprice;



  Product({Key? key, required int id,this.name,this.prand,this.price,this.oldprice,this.image}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Product();
  }
}

class _Product extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }



}
