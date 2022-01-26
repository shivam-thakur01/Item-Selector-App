import 'package:flutter/material.dart';
import 'package:itemselector/Screens/itemAddScreen.dart';
import 'package:itemselector/models/itemSet.dart';
import 'package:itemselector/utilites/drawer.dart';
import 'package:itemselector/utilites/listScreenWidget.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (itemSet.isEmpty) {
      return Scaffold(
          appBar: AppBar(
            title: Text('List of Item'),
          ),
          drawer: Drawer(child: MyDrawer()),
          backgroundColor: Colors.amber[50],
          body: Center(
            child: Text('No item in your List.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                return Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => ItemAddScreen()));
              },
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.white,
              )));
    } else {
      return Scaffold(
          appBar: AppBar(title: Text('List of Item')),
          drawer: Drawer(child: MyDrawer()),
          backgroundColor: Colors.amber[50],
          body: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.81,
                    child: ListView.builder(
                        itemCount: itemSet.length,
                        itemBuilder: (ctx, int index) {
                          return ListScreenWidget(
                            name: itemSet[index].name,
                            price: itemSet[index].price.toString(),
                            time: itemSet[index].datetime,
                          );
                        })),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                // return Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (ctx) => ItemAddScreen()));
                return Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (ctx) => ItemAddScreen()));
              },
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.white,
              )));
    }
  }
}
