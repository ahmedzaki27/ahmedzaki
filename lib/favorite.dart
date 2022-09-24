import 'package:flutter/cupertino.dart';
import 'apimodel.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled8/product_model.dart';
import 'cartmodel.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'apimodel.dart';

class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  void initState() {
    Provider.of<cartmodel>( context  , listen: false).getAllData();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
   Scaffold(

          body: Consumer<cartmodel>(
            builder: (context, cartmodel, child) {
             return
               cartmodel.data == null
                  ? Center(
                child: CircularProgressIndicator(color: Colors.blue),
              )
                  :
                Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                      child: GridView.builder(
                        padding: EdgeInsets.only(),
                        scrollDirection: Axis.vertical,
                        itemCount: cartmodel.data!.data!.products!.length,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: Offset(9.0, 10.0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            width: double.infinity,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          color: Colors.blue,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  cartmodel
                                                      .data!
                                                      .data!
                                                      .products![index]
                                                      .image!),
                                              fit: BoxFit.fill)),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.only(
                                                    bottomLeft: Radius
                                                        .circular(15),
                                                    bottomRight:
                                                    Radius
                                                        .circular(
                                                        15)),
                                                color: Colors.blue,
                                              ),
                                              height: 45,
                                              width: 30,
                                              child: Column(children: [
                                                Icon(Icons.bolt,
                                                    color: Colors.red),
                                                Text(
                                                  cartmodel
                                                      .data!
                                                      .data!
                                                      .products![index]
                                                      .discount!
                                                      .toString(),
                                                  style: TextStyle(
                                                      color:
                                                      Colors.white),
                                                )
                                              ])),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          )
                                        ],
                                      )),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                      margin: EdgeInsets.all(12),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Text(
                                                  "white Coat for winter ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                Text("zara")
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 10, left: 2),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "EGP" +
                                                          cartmodel
                                                              .data!
                                                              .data!
                                                              .products![
                                                          index]
                                                              .price!
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "EGP" +
                                                          cartmodel
                                                              .data!
                                                              .data!
                                                              .products![
                                                          index]
                                                              .oldPrice!
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors
                                                              .black
                                                              .withOpacity(
                                                              0.5),
                                                          decoration:
                                                          TextDecoration
                                                              .lineThrough),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                      Colors.blue,
                                                      radius: 15,
                                                      child: InkWell(
                                                        onTap: () {


                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .add_shopping_cart_rounded,
                                                          color: Colors
                                                              .white,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ));

  }
}
